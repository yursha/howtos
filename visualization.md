# Command line progress logger
- use `\r` to print progress bar on the same line.
(Another approach is to keep track of output interference and use `\r` only when there were no interference)

This means that while a logger tracks the progress of a task all other STDOUT output should be turned off.
Since progress logger is only usefull during interactive debugging it should be possible to *turn it off* during 
non-interactive sessions. A convenient option is to use command-line flag for this (or environment variable).

# Visual data representations
- Bar Chart

# Data-Driven Documents (D3)
- http://d3js.org/
- http://bost.ocks.org/mike/
    + thinking with joins
    + nested selections
    + how selections work
    + three little circles
- bl.ocks.org
- http://bl.ocks.org/mbostock
- ggplot2-Style Axis http://bl.ocks.org/mbostock/4349486
- Margin Convention http://bl.ocks.org/mbostock/3019563
- General update pattern I http://bl.ocks.org/mbostock/3808218
- Pie Multiples http://bl.ocks.org/mbostock/1305111
- Tick Format http://bl.ocks.org/mbostock/9764126 
- Log Axis http://bl.ocks.org/mbostock/5537697
- Axis Component http://bl.ocks.org/mbostock/1166403
- Custom Time Format http://bl.ocks.org/mbostock/4149176
- http://mbostock.github.io/d3/talk/20111018/pack.html
- http://mbostock.github.io/d3/talk/20111018/partition.html
- http://mbostock.github.io/d3/talk/20111116/force-collapsible.html
- http://mbostock.github.io/d3/talk/20111116/bundle.html
- http://mbostock.github.io/d3/talk/20111116/airports.html
- http://mbostock.github.io/d3/talk/20111018/treemap.html
- http://mbostock.github.io/d3/talk/20111018/tree.html
- http://mbostock.github.io/d3/talk/20111018/calendar.html
- http://mbostock.github.io/d3/talk/20111116/transitions.html
- http://www.d3noob.org/
- http://colorbrewer2.org/
- https://leanpub.com/D3-Tips-and-Tricks (Book)
- http://christopheviau.com/d3list/gallery.html

This doesn’t scratch the surface of the data cleaning problem. For that, see projects such as Google Refine and Stanford’s Data Wrangler.

Deferring data transformations to the client often makes it easier for you to prototype visualizations rapidly; you can change the data on-the-fly rather than needing to re-run your data pipeline. On the other hand, when you want to share your visualization with the world, it’s a good idea to optimize your dataset for performance.

# Concepts
- univariate vs multivariate datasets
- object constancy
- data (csv, json)
- scale (linear, discrete)
- Quantitative Scales map a continuous (numeric) domain to a continuous range.

- https://github.com/mbostock/d3
- https://github.com/mbostock/d3/wiki/API-Reference

## Core
### Selections
- https://github.com/mbostock/d3/wiki/Selections#data

### Transitions

### Working with arrays

### Math

### Loading external resources

### CSV Formatting (d3.csv)

### Localization

### Colors

### Namespaces

### Internals

## Scales
- https://github.com/mbostock/d3/wiki/Scales
- Bookmark: https://github.com/mbostock/d3/wiki/Quantitative-Scales#identity-scales

### Quantitative
D3 rescales data domain (input) into visible range (output).
Data domain can be continuous, discrete or time.
- Quantitative (linear y = mx + b) scales have a continuous domain (set of real numbers or dates).
- Ordinal scales have a discrete domain (names, categories).
- Time scales have a time domain.

### Ordinal

## SVG (d3.svg)
2D vector and raster graphics in XML.
Supports Bezier curves, gradients, clipping and masks.
- http://www.w3.org/Graphics/SVG/
- http://www.w3.org/TR/SVG/
- http://www.w3.org/TR/SVG/paths.html
- http://www.w3.org/TR/SVG/shapes.html
- http://www.w3.org/TR/SVG/styling.html - full list of styling properties (vs attributes)
- https://developer.mozilla.org/en/SVG
- https://developer.mozilla.org/en-US/docs/Web/SVG

### Shapes

- Look at gists here https://github.com/mbostock/d3/wiki/SVG-Axes
Axis is a reference line for a scale. It usually has custom labels.
Axes are rendered in a container element (`svg` or `g`) and rely havily on scales which they reference and delegate to.

### Controls

## Layouts (d3.layout)
### Bundle

### Chort

### Cluster

### Force

### Hierarchy

### Histogram

### Pack

### Partition

### Pie

### Stack

### Tree

### Treemap

## Geography (d3.geo)
### Paths

### Projections

### Streams

## Geometry (d3.geom)
### Voronoi

### Quadtree

### Polygon

### Hull

## Behaviors (d3.behaviour)
### Drag

### Zoom

# Google Visualization API (Charts)
- https://developers.google.com/chart/

- https://github.com/google
- https://developers.google.com/products/
- https://github.com/mozilla/metrics-graphics (Mozilla)
- https://plot.ly/javascript/histograms/

Browser draws DOM using flow layout.

# Drawing
- Bezier curves
- gradients
- clipping
- masks

# Image transformations
- rotation
- skewing
- scaling
- translation
