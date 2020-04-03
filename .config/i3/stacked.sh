#!/bin/bash

# Switches current container to stacked layout.
# Similar to using split h or split v.

i3-msg split t
i3-msg layout stacked
