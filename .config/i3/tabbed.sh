#!/bin/bash

# Switches current container to tabbed layout.
# Similar to using split h or split v.

i3-msg split t
i3-msg layout tabbed
