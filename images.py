#!/usr/bin/env python3

# Copyright 2021, Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not
# use this file except in compliance with the License.  You may obtain a copy of
# the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations under
# the License.

import matplotlib.pyplot as plt
import numpy as np
import scipy.stats
import sys

def mean_half_confidence_interval(data, confidence=0.95):
  a = 1.0 * np.array(data)
  n = len(a)
  m, se = np.mean(a), scipy.stats.sem(a)
  h = se * scipy.stats.t.ppf((1 + confidence) / 2., n-1)
  return m, h

colormap = ["#a1def0", "#256676", "#1eefc9", "#277a35", "#8fda59", "#9b2ba1", "#c79ae2", "#764e90", "#f27ff5"]

def prepare_data(strings):
  results = dict()
  benches = []
  for line in strings:
    tool, bench, timestr = line.split(':')
    if tool not in results:
      results[tool] = dict()
    if bench not in benches:
      benches += [bench]
    if bench not in results[tool]:
      results[tool][bench] = []
    results[tool][bench] += [float(timestr)]
  return results, benches

def plot_mean_cis(results, benches, output="times.pdf"):
  means_ci = dict()
  for k, v in results.items():
    means_ci[k] = dict()
    for k2, v2 in v.items():
      means_ci[k][k2] = mean_half_confidence_interval(v2)

  fig, ax = plt.subplots()
  num_tools = len(means_ci)
  for (i, (tool, values)) in enumerate(sorted(means_ci.items())):
    xs = np.array(range(len(values))) * (num_tools + 2) + i
    heights = [values[b][0] for b in benches]
    cis = [values[b][1] for b in benches]
    ax.bar(xs, heights, label=tool, log=True, color=colormap[i])
    ax.errorbar(xs, heights, yerr=cis, linestyle='none', color='black', capsize=2.)
  ax.set_xticks(np.array(range(len(benches))) * (num_tools + 2) + (num_tools / 2.))
  ax.set_xticklabels(benches)
  plt.figlegend(loc='upper center', ncol=len(means_ci), frameon=False, borderpad=0.0, borderaxespad=0.1, bbox_to_anchor=(0.5, 0.93))
  ax.set_ylabel("time, s")
  fig.set_size_inches(17, 4)
  plt.savefig(output, bbox_inches='tight', pad_inches=0.0)

def plot_median(results, benches, output="medians.pdf"):
  medians = dict()
  for k, v in results.items():
    medians[k] = dict()
    for k2, v2 in v.items():
      medians[k][k2] = np.median(v2)

  fig, ax = plt.subplots()
  num_tools = len(medians)
  for (i, (tool, values)) in enumerate(sorted(medians.items())):
    xs = np.array(range(len(values))) * (num_tools + 2) + i
    heights = [values[b] for b in benches]
    ax.bar(xs, heights, label=tool, log=True, color=colormap[i])
  ax.set_xticks(np.array(range(len(benches))) * (num_tools + 2) + (num_tools / 2.))
  ax.set_xticklabels(benches)
  plt.figlegend(loc='upper center', ncol=len(medians), frameon=False, borderpad=0.0, borderaxespad=0.1, bbox_to_anchor=(0.5, 0.93))
  ax.set_ylabel("time, s")
  fig.set_size_inches(17, 4)
  plt.savefig(output, bbox_inches='tight', pad_inches=0.0)

def plot_speedups(results, benches, output="speedups.pdf"):
  medians = dict()
  for k, v in results.items():
    medians[k] = dict()
    for k2, v2 in v.items():
      medians[k][k2] = np.median(v2)

  speedups = dict()
  for k, v in medians.items():
    speedups[k] = dict()
    for k2, v2 in v.items():
      speedups[k][k2] = medians['clang'][k2] / v2

  fig, ax = plt.subplots()
  num_tools = len(speedups)
  for (i, (tool, values)) in enumerate(sorted(speedups.items())):
    xs = np.array(range(len(values))) * (num_tools + 2) + i
    heights = [values[b] for b in benches]
    ax.bar(xs, heights, log=True, label=tool, color=colormap[i])
  ax.set_xticks(np.array(range(len(benches))) * (num_tools + 2) + (num_tools / 2.))
  ax.set_xticklabels(benches)
  ax.axhline(1)
  plt.figlegend(loc='upper center', ncol=len(medians), frameon=False, borderpad=0.0, borderaxespad=0.1, bbox_to_anchor=(0.5, 0.93))
  ax.set_ylabel("speedup")
  fig.set_size_inches(17, 4)
  plt.savefig(output, bbox_inches='tight', pad_inches=0.0)


if __name__ == "__main__":
  if len(sys.argv) != 2:
    print(f"Usage: {sys.argv[0]} <filename>")
    sys.exit(1)

  with open(sys.argv[1]) as f:
    data = f.readlines()

  results, benches = prepare_data(data)
  plot_mean_cis(results, benches, "times.pdf")
  plot_median(results, benches, "medians.pdf")
  plot_speedups(results, benches, "speedups.pdf")

