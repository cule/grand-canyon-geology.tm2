// Terrain //

#contours {
  comp-op: multiply;
  line-color: #777;
  line-opacity: 0.5;
  line-width: 0.25;
  [index=1] { 
    line-opacity: 1;
    line-width: 0.4;
  }
}

/*
#contours::contour_label {
  [zoom<=13],
  [zoom>=14] {
    text-name: "[ele]+' m'";
    text-face-name: 'Arial Unicode MS Regular';
    text-placement: line;
    text-size: 8;
    text-fill: #888;
    text-avoid-edges: true;
  }
}
*/

#hillshade {
  ::1[zoom<=11],
  ::2[zoom=12],
  ::3[zoom=13],
  ::4[zoom=14] {
    polygon-clip: false;
    [class='full_shadow'] {
      polygon-fill: #333;
      polygon-opacity: 0.09;
      polygon-comp-op: multiply;
    }
    [class='medium_shadow'] {
      polygon-fill: #444;
      polygon-opacity: 0.09;
      polygon-comp-op: multiply;
    }
    [class='medium_highlight'] {
      polygon-fill: #ccc;
      polygon-opacity: 0.3;
      polygon-comp-op: lighten;
    }
    [class='full_highlight'] {
      polygon-fill: #eee;
      polygon-opacity: 0.3;
      polygon-comp-op: lighten;
    }
  }
  ::1[zoom<=11] { image-filters: agg-stack-blur(1,1); }
  ::2[zoom=12] { image-filters: agg-stack-blur(1,1); }
  ::3[zoom=13] { image-filters: agg-stack-blur(3,3); }
  ::4[zoom=14] { image-filters: agg-stack-blur(6,6); }
}
