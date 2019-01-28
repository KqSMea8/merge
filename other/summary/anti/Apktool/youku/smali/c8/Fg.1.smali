.class public Lc8/Fg;
.super Lc8/Qh;
.source "FadePort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field private static final PROPNAME_SCREEN_X:Ljava/lang/String; = "android:fade:screenX"

.field private static final PROPNAME_SCREEN_Y:Ljava/lang/String; = "android:fade:screenY"


# instance fields
.field private mFadingMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Fg;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lc8/Fg;-><init>(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "fadingMode"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lc8/Qh;-><init>()V

    .line 102
    iput p1, p0, Lc8/Fg;->mFadingMode:I

    .line 103
    return-void
.end method

.method private captureValues(Lc8/Ch;)V
    .locals 4
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 129
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 130
    .local v0, "loc":[I
    iget-object v1, p1, Lc8/Ch;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 131
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:fade:screenX"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p1, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:fade:screenY"

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method private createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "listener"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    const/4 v0, 0x0

    .line 110
    cmpl-float v1, p2, p3

    if-nez v1, :cond_1

    .line 112
    if-eqz p4, :cond_0

    .line 113
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 125
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 119
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-boolean v1, Lc8/Fg;->DBG:Z

    if-eqz v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Created animator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    :cond_2
    if-eqz p4, :cond_0

    .line 123
    invoke-virtual {v0, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method


# virtual methods
.method public captureStartValues(Lc8/Ch;)V
    .locals 0
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lc8/Qh;->captureStartValues(Lc8/Ch;)V

    .line 138
    invoke-direct {p0, p1}, Lc8/Fg;->captureValues(Lc8/Ch;)V

    .line 139
    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lc8/Ch;
    .param p5, "endVisibility"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 145
    iget v4, p0, Lc8/Fg;->mFadingMode:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-nez p4, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-object v3

    .line 148
    :cond_1
    iget-object v0, p4, Lc8/Ch;->view:Landroid/view/View;

    .line 149
    .local v0, "endView":Landroid/view/View;
    sget-boolean v4, Lc8/Fg;->DBG:Z

    if-eqz v4, :cond_2

    .line 150
    if-eqz p2, :cond_3

    iget-object v1, p2, Lc8/Ch;->view:Landroid/view/View;

    .line 151
    .local v1, "startView":Landroid/view/View;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .end local v1    # "startView":Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 155
    new-instance v2, Lc8/Cg;

    invoke-direct {v2, p0, v0}, Lc8/Cg;-><init>(Lc8/Fg;Landroid/view/View;)V

    .line 184
    .local v2, "transitionListener":Lc8/sh;
    invoke-virtual {p0, v2}, Lc8/Fg;->addListener(Lc8/sh;)Lc8/uh;

    .line 185
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v6, v4, v3}, Lc8/Fg;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto :goto_0

    .end local v2    # "transitionListener":Lc8/sh;
    :cond_3
    move-object v1, v3

    .line 150
    goto :goto_1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Lc8/Ch;ILc8/Ch;I)Landroid/animation/Animator;
    .locals 21
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Lc8/Ch;
    .param p5, "endVisibility"    # I

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget v3, v0, Lc8/Fg;->mFadingMode:I

    and-int/lit8 v3, v3, 0x2

    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v3, v0, :cond_0

    .line 193
    const/4 v3, 0x0

    .line 350
    :goto_0
    return-object v3

    .line 195
    :cond_0
    const/16 v18, 0x0

    .line 196
    .local v18, "view":Landroid/view/View;
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    iget-object v0, v0, Lc8/Ch;->view:Landroid/view/View;

    move-object/from16 v17, v0

    .line 197
    .local v17, "startView":Landroid/view/View;
    :goto_1
    if-eqz p4, :cond_5

    move-object/from16 v0, p4

    iget-object v10, v0, Lc8/Ch;->view:Landroid/view/View;

    .line 198
    .local v10, "endView":Landroid/view/View;
    :goto_2
    sget-boolean v3, Lc8/Fg;->DBG:Z

    if-eqz v3, :cond_1

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Fade.onDisappear: startView, startVis, endView, endVis = "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v20, ", "

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    :cond_1
    const/4 v13, 0x0

    .line 203
    .local v13, "overlayView":Landroid/view/View;
    const/16 v19, 0x0

    .line 204
    .local v19, "viewToKeep":Landroid/view/View;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 205
    :cond_2
    if-eqz v10, :cond_6

    .line 207
    move-object v13, v10

    move-object/from16 v18, v10

    .line 243
    :cond_3
    :goto_3
    move/from16 v6, p5

    .line 245
    .local v6, "finalVisibility":I
    if-eqz v13, :cond_b

    .line 247
    move-object/from16 v0, p2

    iget-object v3, v0, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v20, "android:fade:screenX"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 248
    .local v14, "screenX":I
    move-object/from16 v0, p2

    iget-object v3, v0, Lc8/Ch;->values:Ljava/util/Map;

    const-string/jumbo v20, "android:fade:screenY"

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 249
    .local v15, "screenY":I
    const/4 v3, 0x2

    new-array v12, v3, [I

    .line 250
    .local v12, "loc":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 251
    const/4 v3, 0x0

    aget v3, v12, v3

    sub-int v3, v14, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v20

    sub-int v3, v3, v20

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 252
    const/4 v3, 0x1

    aget v3, v12, v3

    sub-int v3, v15, v3

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v20

    sub-int v3, v3, v20

    invoke-static {v13, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 253
    invoke-static/range {p1 .. p1}, Lc8/Eh;->createFrom(Landroid/view/ViewGroup;)Lc8/Eh;

    move-result-object v3

    invoke-virtual {v3, v13}, Lc8/Eh;->add(Landroid/view/View;)V

    .line 257
    const/4 v9, 0x0

    .line 258
    .local v9, "endAlpha":F
    move-object/from16 v4, v18

    .line 259
    .local v4, "finalView":Landroid/view/View;
    move-object v7, v13

    .line 260
    .local v7, "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v19

    .line 261
    .local v5, "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 262
    .local v8, "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Lc8/Dg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lc8/Dg;-><init>(Lc8/Fg;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 290
    .local v2, "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v9, v2}, Lc8/Fg;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 196
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v6    # "finalVisibility":I
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    .end local v10    # "endView":Landroid/view/View;
    .end local v12    # "loc":[I
    .end local v13    # "overlayView":Landroid/view/View;
    .end local v14    # "screenX":I
    .end local v15    # "screenY":I
    .end local v17    # "startView":Landroid/view/View;
    .end local v19    # "viewToKeep":Landroid/view/View;
    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 197
    .restart local v17    # "startView":Landroid/view/View;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 208
    .restart local v10    # "endView":Landroid/view/View;
    .restart local v13    # "overlayView":Landroid/view/View;
    .restart local v19    # "viewToKeep":Landroid/view/View;
    :cond_6
    if-eqz v17, :cond_3

    .line 212
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_7

    .line 214
    move-object/from16 v13, v17

    move-object/from16 v18, v17

    goto/16 :goto_3

    .line 215
    :cond_7
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 216
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_3

    .line 217
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 218
    .local v16, "startParent":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v11

    .line 219
    .local v11, "id":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lc8/Fg;->mCanRemoveViews:Z

    if-eqz v3, :cond_3

    .line 223
    move-object/from16 v13, v17

    move-object/from16 v18, v17

    goto/16 :goto_3

    .line 229
    .end local v11    # "id":I
    .end local v16    # "startParent":Landroid/view/View;
    :cond_8
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ne v0, v3, :cond_9

    .line 231
    move-object/from16 v18, v10

    move-object/from16 v19, v10

    goto/16 :goto_3

    .line 234
    :cond_9
    move-object/from16 v0, v17

    if-ne v0, v10, :cond_a

    .line 236
    move-object/from16 v18, v10

    move-object/from16 v19, v10

    goto/16 :goto_3

    .line 239
    :cond_a
    move-object/from16 v18, v17

    move-object/from16 v13, v17

    goto/16 :goto_3

    .line 292
    .restart local v6    # "finalVisibility":I
    :cond_b
    if-eqz v19, :cond_c

    .line 295
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    const/4 v9, 0x0

    .line 299
    .restart local v9    # "endAlpha":F
    move-object/from16 v4, v18

    .line 300
    .restart local v4    # "finalView":Landroid/view/View;
    move-object v7, v13

    .line 301
    .restart local v7    # "finalOverlayView":Landroid/view/View;
    move-object/from16 v5, v19

    .line 302
    .restart local v5    # "finalViewToKeep":Landroid/view/View;
    move-object/from16 v8, p1

    .line 303
    .restart local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    new-instance v2, Lc8/Eg;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lc8/Eg;-><init>(Lc8/Fg;Landroid/view/View;Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 348
    .restart local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v9, v2}, Lc8/Fg;->createAnimation(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)Landroid/animation/Animator;

    move-result-object v3

    goto/16 :goto_0

    .line 350
    .end local v2    # "endListener":Landroid/animation/AnimatorListenerAdapter;
    .end local v4    # "finalView":Landroid/view/View;
    .end local v5    # "finalViewToKeep":Landroid/view/View;
    .end local v7    # "finalOverlayView":Landroid/view/View;
    .end local v8    # "finalSceneRoot":Landroid/view/ViewGroup;
    .end local v9    # "endAlpha":F
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
