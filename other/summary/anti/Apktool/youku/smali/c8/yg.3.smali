.class public Lc8/yg;
.super Lc8/uh;
.source "ChangeBoundsPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static sRectEvaluator:Lc8/Gg;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Lc8/yg;->sTransitionProperties:[Ljava/lang/String;

    .line 63
    new-instance v0, Lc8/Gg;

    invoke-direct {v0}, Lc8/Gg;-><init>()V

    sput-object v0, Lc8/yg;->sRectEvaluator:Lc8/Gg;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lc8/uh;-><init>()V

    .line 65
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/yg;->tempLocation:[I

    .line 67
    iput-boolean v1, p0, Lc8/yg;->mResizeClip:Z

    .line 69
    iput-boolean v1, p0, Lc8/yg;->mReparent:Z

    return-void
.end method

.method private captureValues(Lc8/Ch;)V
    .locals 8
    .param p1, "values"    # Lc8/Ch;

    .prologue
    .line 95
    iget-object v0, p1, Lc8/Ch;->view:Landroid/view/View;

    .line 96
    .local v0, "view":Landroid/view/View;
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 96
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:parent"

    iget-object v3, p1, Lc8/Ch;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v1, p1, Lc8/Ch;->view:Landroid/view/View;

    iget-object v2, p0, Lc8/yg;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 100
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:windowX"

    iget-object v3, p0, Lc8/yg;->tempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:windowY"

    iget-object v3, p0, Lc8/yg;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method


# virtual methods
.method public captureEndValues(Lc8/Ch;)V
    .locals 0
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lc8/yg;->captureValues(Lc8/Ch;)V

    .line 112
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 0
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lc8/yg;->captureValues(Lc8/Ch;)V

    .line 107
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 49
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "endValues"    # Lc8/Ch;

    .prologue
    .line 117
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 118
    :cond_0
    const/4 v5, 0x0

    .line 350
    :cond_1
    :goto_0
    return-object v5

    .line 120
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v33, v0

    .line 121
    .local v33, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v15, v0, Lc8/Ch;->values:Ljava/util/Map;

    .line 122
    .local v15, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v44, "android:changeBounds:parent"

    move-object/from16 v0, v33

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 123
    .local v32, "startParent":Landroid/view/ViewGroup;
    const-string/jumbo v44, "android:changeBounds:parent"

    move-object/from16 v0, v44

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 124
    .local v14, "endParent":Landroid/view/ViewGroup;
    if-eqz v32, :cond_3

    if-nez v14, :cond_4

    .line 125
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 127
    :cond_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/Ch;->view:Landroid/view/View;

    move-object/from16 v42, v0

    .line 128
    .local v42, "view":Landroid/view/View;
    move-object/from16 v0, v32

    if-eq v0, v14, :cond_5

    .line 129
    invoke-virtual/range {v32 .. v32}, Landroid/view/ViewGroup;->getId()I

    move-result v44

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getId()I

    move-result v45

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_11

    :cond_5
    const/16 v23, 0x1

    .line 134
    .local v23, "parentsEqual":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/yg;->mReparent:Z

    move/from16 v44, v0

    if-eqz v44, :cond_6

    if-eqz v23, :cond_20

    .line 135
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v44, v0

    const-string/jumbo v45, "android:changeBounds:bounds"

    invoke-interface/range {v44 .. v45}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/graphics/Rect;

    .line 136
    .local v28, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v44, v0

    const-string/jumbo v45, "android:changeBounds:bounds"

    invoke-interface/range {v44 .. v45}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 137
    .local v10, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    .line 138
    .local v31, "startLeft":I
    iget v13, v10, Landroid/graphics/Rect;->left:I

    .line 139
    .local v13, "endLeft":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v35, v0

    .line 140
    .local v35, "startTop":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 141
    .local v17, "endTop":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    .line 142
    .local v34, "startRight":I
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    .line 143
    .local v16, "endRight":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 144
    .local v27, "startBottom":I
    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    .line 145
    .local v9, "endBottom":I
    sub-int v36, v34, v31

    .line 146
    .local v36, "startWidth":I
    sub-int v30, v27, v35

    .line 147
    .local v30, "startHeight":I
    sub-int v18, v16, v13

    .line 148
    .local v18, "endWidth":I
    sub-int v12, v9, v17

    .line 149
    .local v12, "endHeight":I
    const/16 v22, 0x0

    .line 150
    .local v22, "numChanges":I
    if-eqz v36, :cond_a

    if-eqz v30, :cond_a

    if-eqz v18, :cond_a

    if-eqz v12, :cond_a

    .line 151
    move/from16 v0, v31

    if-eq v0, v13, :cond_7

    .line 152
    add-int/lit8 v22, v22, 0x1

    .line 154
    :cond_7
    move/from16 v0, v35

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 155
    add-int/lit8 v22, v22, 0x1

    .line 157
    :cond_8
    move/from16 v0, v34

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    .line 158
    add-int/lit8 v22, v22, 0x1

    .line 160
    :cond_9
    move/from16 v0, v27

    if-eq v0, v9, :cond_a

    .line 161
    add-int/lit8 v22, v22, 0x1

    .line 164
    :cond_a
    if-lez v22, :cond_22

    .line 165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/yg;->mResizeClip:Z

    move/from16 v44, v0

    if-nez v44, :cond_12

    .line 166
    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v24, v0

    .line 167
    .local v24, "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v25, 0x0

    .line 168
    .local v25, "pvhIndex":I
    move/from16 v0, v31

    if-eq v0, v13, :cond_b

    .line 169
    move-object/from16 v0, v42

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    .line 171
    :cond_b
    move/from16 v0, v35

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    .line 172
    move-object/from16 v0, v42

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    .line 174
    :cond_c
    move/from16 v0, v34

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    .line 175
    move-object/from16 v0, v42

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 177
    :cond_d
    move/from16 v0, v27

    if-eq v0, v9, :cond_e

    .line 178
    move-object/from16 v0, v42

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 180
    :cond_e
    move/from16 v0, v31

    if-eq v0, v13, :cond_24

    .line 181
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "pvhIndex":I
    .local v26, "pvhIndex":I
    const-string/jumbo v44, "left"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v31, v45, v46

    const/16 v46, 0x1

    aput v13, v45, v46

    invoke-static/range {v44 .. v45}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v24, v25

    .line 183
    :goto_2
    move/from16 v0, v35

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    .line 184
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "pvhIndex":I
    .restart local v25    # "pvhIndex":I
    const-string/jumbo v44, "top"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v35, v45, v46

    const/16 v46, 0x1

    aput v17, v45, v46

    invoke-static/range {v44 .. v45}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v24, v26

    move/from16 v26, v25

    .line 186
    .end local v25    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    :cond_f
    move/from16 v0, v34

    move/from16 v1, v16

    if-eq v0, v1, :cond_23

    .line 187
    add-int/lit8 v25, v26, 0x1

    .end local v26    # "pvhIndex":I
    .restart local v25    # "pvhIndex":I
    const-string/jumbo v44, "right"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v34, v45, v46

    const/16 v46, 0x1

    aput v16, v45, v46

    invoke-static/range {v44 .. v45}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v24, v26

    .line 190
    :goto_3
    move/from16 v0, v27

    if-eq v0, v9, :cond_10

    .line 191
    const-string/jumbo v44, "bottom"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput v27, v45, v46

    const/16 v46, 0x1

    aput v9, v45, v46

    invoke-static/range {v44 .. v45}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v24, v25

    .line 194
    :cond_10
    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 195
    .local v5, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v44

    move-object/from16 v0, v44

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v44, v0

    if-eqz v44, :cond_1

    .line 196
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 198
    new-instance v41, Lc8/ug;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/ug;-><init>(Lc8/yg;)V

    .line 224
    .local v41, "transitionListener":Lc8/sh;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/yg;->addListener(Lc8/sh;)Lc8/uh;

    goto/16 :goto_0

    .line 129
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "endBottom":I
    .end local v10    # "endBounds":Landroid/graphics/Rect;
    .end local v12    # "endHeight":I
    .end local v13    # "endLeft":I
    .end local v16    # "endRight":I
    .end local v17    # "endTop":I
    .end local v18    # "endWidth":I
    .end local v22    # "numChanges":I
    .end local v23    # "parentsEqual":Z
    .end local v24    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v25    # "pvhIndex":I
    .end local v27    # "startBottom":I
    .end local v28    # "startBounds":Landroid/graphics/Rect;
    .end local v30    # "startHeight":I
    .end local v31    # "startLeft":I
    .end local v34    # "startRight":I
    .end local v35    # "startTop":I
    .end local v36    # "startWidth":I
    .end local v41    # "transitionListener":Lc8/sh;
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_1

    .line 228
    .restart local v9    # "endBottom":I
    .restart local v10    # "endBounds":Landroid/graphics/Rect;
    .restart local v12    # "endHeight":I
    .restart local v13    # "endLeft":I
    .restart local v16    # "endRight":I
    .restart local v17    # "endTop":I
    .restart local v18    # "endWidth":I
    .restart local v22    # "numChanges":I
    .restart local v23    # "parentsEqual":Z
    .restart local v27    # "startBottom":I
    .restart local v28    # "startBounds":Landroid/graphics/Rect;
    .restart local v30    # "startHeight":I
    .restart local v31    # "startLeft":I
    .restart local v34    # "startRight":I
    .restart local v35    # "startTop":I
    .restart local v36    # "startWidth":I
    :cond_12
    move/from16 v0, v36

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 230
    move/from16 v0, v36

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v44

    add-int v44, v44, v13

    .line 229
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    .line 232
    :cond_13
    move/from16 v0, v30

    if-eq v0, v12, :cond_14

    .line 234
    move/from16 v0, v30

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v44

    add-int v44, v44, v17

    .line 233
    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setBottom(I)V

    .line 237
    :cond_14
    move/from16 v0, v31

    if-eq v0, v13, :cond_15

    .line 238
    sub-int v44, v31, v13

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 240
    :cond_15
    move/from16 v0, v35

    move/from16 v1, v17

    if-eq v0, v1, :cond_16

    .line 241
    sub-int v44, v35, v17

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 244
    :cond_16
    sub-int v44, v13, v31

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v39, v0

    .line 245
    .local v39, "transXDelta":F
    sub-int v44, v17, v35

    move/from16 v0, v44

    int-to-float v0, v0

    move/from16 v40, v0

    .line 246
    .local v40, "transYDelta":F
    sub-int v43, v18, v36

    .line 247
    .local v43, "widthDelta":I
    sub-int v21, v12, v30

    .line 248
    .local v21, "heightDelta":I
    const/16 v22, 0x0

    .line 249
    const/16 v44, 0x0

    cmpl-float v44, v39, v44

    if-eqz v44, :cond_17

    .line 250
    add-int/lit8 v22, v22, 0x1

    .line 252
    :cond_17
    const/16 v44, 0x0

    cmpl-float v44, v40, v44

    if-eqz v44, :cond_18

    .line 253
    add-int/lit8 v22, v22, 0x1

    .line 255
    :cond_18
    if-nez v43, :cond_19

    if-eqz v21, :cond_1a

    .line 256
    :cond_19
    add-int/lit8 v22, v22, 0x1

    .line 258
    :cond_1a
    move/from16 v0, v22

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v24, v0

    .line 259
    .restart local v24    # "pvh":[Landroid/animation/PropertyValuesHolder;
    const/16 v25, 0x0

    .line 260
    .restart local v25    # "pvhIndex":I
    const/16 v44, 0x0

    cmpl-float v44, v39, v44

    if-eqz v44, :cond_1b

    .line 261
    add-int/lit8 v26, v25, 0x1

    .end local v25    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    const-string/jumbo v44, "translationX"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [F

    move-object/from16 v45, v0

    const/16 v46, 0x0

    .line 262
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTranslationX()F

    move-result v47

    aput v47, v45, v46

    const/16 v46, 0x1

    const/16 v47, 0x0

    aput v47, v45, v46

    .line 261
    invoke-static/range {v44 .. v45}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v24, v25

    move/from16 v25, v26

    .line 264
    .end local v26    # "pvhIndex":I
    .restart local v25    # "pvhIndex":I
    :cond_1b
    const/16 v44, 0x0

    cmpl-float v44, v40, v44

    if-eqz v44, :cond_1c

    .line 265
    const-string/jumbo v44, "translationY"

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [F

    move-object/from16 v45, v0

    const/16 v46, 0x0

    .line 266
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getTranslationY()F

    move-result v47

    aput v47, v45, v46

    const/16 v46, 0x1

    const/16 v47, 0x0

    aput v47, v45, v46

    .line 265
    invoke-static/range {v44 .. v45}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v44

    aput-object v44, v24, v25

    .line 268
    :cond_1c
    if-nez v43, :cond_1d

    if-eqz v21, :cond_1e

    .line 269
    :cond_1d
    new-instance v44, Landroid/graphics/Rect;

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v36

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    new-instance v44, Landroid/graphics/Rect;

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 274
    :cond_1e
    move-object/from16 v0, v42

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 275
    .restart local v5    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v44

    move-object/from16 v0, v44

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v44, v0

    if-eqz v44, :cond_1f

    .line 276
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 278
    new-instance v41, Lc8/vg;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/vg;-><init>(Lc8/yg;)V

    .line 304
    .restart local v41    # "transitionListener":Lc8/sh;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lc8/yg;->addListener(Lc8/sh;)Lc8/uh;

    .line 306
    .end local v41    # "transitionListener":Lc8/sh;
    :cond_1f
    new-instance v44, Lc8/wg;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lc8/wg;-><init>(Lc8/yg;)V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 316
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "endBottom":I
    .end local v10    # "endBounds":Landroid/graphics/Rect;
    .end local v12    # "endHeight":I
    .end local v13    # "endLeft":I
    .end local v16    # "endRight":I
    .end local v17    # "endTop":I
    .end local v18    # "endWidth":I
    .end local v21    # "heightDelta":I
    .end local v22    # "numChanges":I
    .end local v24    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .end local v25    # "pvhIndex":I
    .end local v27    # "startBottom":I
    .end local v28    # "startBounds":Landroid/graphics/Rect;
    .end local v30    # "startHeight":I
    .end local v31    # "startLeft":I
    .end local v34    # "startRight":I
    .end local v35    # "startTop":I
    .end local v36    # "startWidth":I
    .end local v39    # "transXDelta":F
    .end local v40    # "transYDelta":F
    .end local v43    # "widthDelta":I
    :cond_20
    move-object/from16 v0, p2

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v44, v0

    const-string/jumbo v45, "android:changeBounds:windowX"

    invoke-interface/range {v44 .. v45}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v37

    .line 317
    .local v37, "startX":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v44, v0

    const-string/jumbo v45, "android:changeBounds:windowY"

    invoke-interface/range {v44 .. v45}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 318
    .local v38, "startY":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v44, v0

    const-string/jumbo v45, "android:changeBounds:windowX"

    invoke-interface/range {v44 .. v45}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 319
    .local v19, "endX":I
    move-object/from16 v0, p3

    iget-object v0, v0, Lc8/Ch;->values:Ljava/util/Map;

    move-object/from16 v44, v0

    const-string/jumbo v45, "android:changeBounds:windowY"

    invoke-interface/range {v44 .. v45}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/Integer;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 321
    .local v20, "endY":I
    move/from16 v0, v37

    move/from16 v1, v19

    if-ne v0, v1, :cond_21

    move/from16 v0, v38

    move/from16 v1, v20

    if-eq v0, v1, :cond_22

    .line 322
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v44, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 323
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getWidth()I

    move-result v44

    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getHeight()I

    move-result v45

    sget-object v46, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v44 .. v46}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 325
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v7, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 327
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 328
    .local v8, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/16 v44, 0x4

    move-object/from16 v0, v42

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-static/range {p1 .. p1}, Lc8/Hh;->createFrom(Landroid/view/View;)Lc8/Hh;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v8}, Lc8/Hh;->add(Landroid/graphics/drawable/Drawable;)V

    .line 331
    new-instance v29, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v44, v44, v45

    sub-int v44, v37, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget v45, v45, v46

    sub-int v45, v38, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v46, v46, v47

    sub-int v46, v37, v46

    .line 332
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getWidth()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v47, v47, v48

    sub-int v47, v38, v47

    .line 333
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getHeight()I

    move-result v48

    add-int v47, v47, v48

    move-object/from16 v0, v29

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 334
    .local v29, "startBounds1":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aget v44, v44, v45

    sub-int v44, v19, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v45, v0

    const/16 v46, 0x1

    aget v45, v45, v46

    sub-int v45, v20, v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget v46, v46, v47

    sub-int v46, v19, v46

    .line 335
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getWidth()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/yg;->tempLocation:[I

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v47, v47, v48

    sub-int v47, v20, v47

    .line 336
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getHeight()I

    move-result v48

    add-int v47, v47, v48

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    move/from16 v3, v47

    invoke-direct {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    .local v11, "endBounds1":Landroid/graphics/Rect;
    const-string/jumbo v44, "bounds"

    sget-object v45, Lc8/yg;->sRectEvaluator:Lc8/Gg;

    const/16 v46, 0x2

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aput-object v29, v46, v47

    const/16 v47, 0x1

    aput-object v11, v46, v47

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v46

    invoke-static {v8, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 339
    .restart local v5    # "anim":Landroid/animation/ObjectAnimator;
    new-instance v44, Lc8/xg;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v42

    invoke-direct {v0, v1, v2, v8, v3}, Lc8/xg;-><init>(Lc8/yg;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;)V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 350
    .end local v5    # "anim":Landroid/animation/ObjectAnimator;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v11    # "endBounds1":Landroid/graphics/Rect;
    .end local v19    # "endX":I
    .end local v20    # "endY":I
    .end local v29    # "startBounds1":Landroid/graphics/Rect;
    .end local v37    # "startX":I
    .end local v38    # "startY":I
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v9    # "endBottom":I
    .restart local v10    # "endBounds":Landroid/graphics/Rect;
    .restart local v12    # "endHeight":I
    .restart local v13    # "endLeft":I
    .restart local v16    # "endRight":I
    .restart local v17    # "endTop":I
    .restart local v18    # "endWidth":I
    .restart local v22    # "numChanges":I
    .restart local v24    # "pvh":[Landroid/animation/PropertyValuesHolder;
    .restart local v26    # "pvhIndex":I
    .restart local v27    # "startBottom":I
    .restart local v28    # "startBounds":Landroid/graphics/Rect;
    .restart local v30    # "startHeight":I
    .restart local v31    # "startLeft":I
    .restart local v34    # "startRight":I
    .restart local v35    # "startTop":I
    .restart local v36    # "startWidth":I
    :cond_23
    move/from16 v25, v26

    .end local v26    # "pvhIndex":I
    .restart local v25    # "pvhIndex":I
    goto/16 :goto_3

    :cond_24
    move/from16 v26, v25

    .end local v25    # "pvhIndex":I
    .restart local v26    # "pvhIndex":I
    goto/16 :goto_2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lc8/yg;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .param p1, "reparent"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lc8/yg;->mReparent:Z

    .line 92
    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lc8/yg;->mResizeClip:Z

    .line 78
    return-void
.end method
