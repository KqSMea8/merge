.class public Lc8/dh;
.super Lc8/Yg;
.source "TransitionKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Lc8/N;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bh;,
        Lc8/ch;
    }
.end annotation


# instance fields
.field private mCompatListener:Lc8/bh;

.field mExternalTransition:Lc8/Zg;

.field mTransition:Landroid/transition/Transition;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/Yg;-><init>()V

    .line 328
    return-void
.end method

.method static convertToPlatform(Lc8/Ch;)Landroid/transition/TransitionValues;
    .locals 1
    .param p0, "values"    # Lc8/Ch;

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 96
    .local v0, "platformValues":Landroid/transition/TransitionValues;
    invoke-static {p0, v0}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    goto :goto_0
.end method

.method static convertToSupport(Landroid/transition/TransitionValues;)Lc8/Ch;
    .locals 1
    .param p0, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lc8/Ch;

    invoke-direct {v0}, Lc8/Ch;-><init>()V

    .line 86
    .local v0, "supportValues":Lc8/Ch;
    invoke-static {p0, v0}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    goto :goto_0
.end method

.method static copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V
    .locals 2
    .param p0, "source"    # Landroid/transition/TransitionValues;
    .param p1, "dest"    # Lc8/Ch;

    .prologue
    .line 43
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iput-object v0, p1, Lc8/Ch;->view:Landroid/view/View;

    .line 47
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    iget-object v0, p1, Lc8/Ch;->values:Ljava/util/Map;

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V
    .locals 2
    .param p0, "source"    # Lc8/Ch;
    .param p1, "dest"    # Landroid/transition/TransitionValues;

    .prologue
    .line 54
    if-nez p0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lc8/Ch;->view:Landroid/view/View;

    iput-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lc8/Ch;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 59
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v1, p0, Lc8/Ch;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method static wrapCaptureEndValues(Lc8/Zg;Landroid/transition/TransitionValues;)V
    .locals 1
    .param p0, "transition"    # Lc8/Zg;
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 74
    new-instance v0, Lc8/Ch;

    invoke-direct {v0}, Lc8/Ch;-><init>()V

    .line 76
    .local v0, "externalValues":Lc8/Ch;
    invoke-static {p1, v0}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    .line 77
    invoke-interface {p0, v0}, Lc8/Zg;->captureEndValues(Lc8/Ch;)V

    .line 78
    invoke-static {v0, p1}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    .line 79
    return-void
.end method

.method static wrapCaptureStartValues(Lc8/Zg;Landroid/transition/TransitionValues;)V
    .locals 1
    .param p0, "transition"    # Lc8/Zg;
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 65
    new-instance v0, Lc8/Ch;

    invoke-direct {v0}, Lc8/Ch;-><init>()V

    .line 67
    .local v0, "externalValues":Lc8/Ch;
    invoke-static {p1, v0}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    .line 68
    invoke-interface {p0, v0}, Lc8/Zg;->captureStartValues(Lc8/Ch;)V

    .line 69
    invoke-static {v0, p1}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    .line 70
    return-void
.end method


# virtual methods
.method public addListener(Lc8/ah;)Lc8/Yg;
    .locals 2
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 112
    iget-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lc8/bh;

    invoke-direct {v0, p0}, Lc8/bh;-><init>(Lc8/dh;)V

    iput-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    .line 114
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 116
    :cond_0
    iget-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    invoke-virtual {v0, p1}, Lc8/bh;->addListener(Lc8/ah;)V

    .line 117
    return-object p0
.end method

.method public addTarget(I)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 142
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 136
    return-object p0
.end method

.method public captureEndValues(Lc8/Ch;)V
    .locals 2
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 147
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 149
    .local v0, "internalValues":Landroid/transition/TransitionValues;
    invoke-static {p1, v0}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    .line 150
    iget-object v1, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 151
    invoke-static {v0, p1}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    .line 152
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 2
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 156
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 158
    .local v0, "internalValues":Landroid/transition/TransitionValues;
    invoke-static {p1, v0}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    .line 159
    iget-object v1, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, v0}, Landroid/transition/Transition;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 160
    invoke-static {v0, p1}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    .line 161
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lc8/Ch;Lc8/Ch;)Landroid/animation/Animator;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Ch;
    .param p3, "endValues"    # Lc8/Ch;

    .prologue
    .line 168
    if-eqz p2, :cond_0

    .line 169
    new-instance v1, Landroid/transition/TransitionValues;

    invoke-direct {v1}, Landroid/transition/TransitionValues;-><init>()V

    .line 170
    .local v1, "internalStartValues":Landroid/transition/TransitionValues;
    invoke-static {p2, v1}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    .line 174
    :goto_0
    if-eqz p3, :cond_1

    .line 175
    new-instance v0, Landroid/transition/TransitionValues;

    invoke-direct {v0}, Landroid/transition/TransitionValues;-><init>()V

    .line 176
    .local v0, "internalEndValues":Landroid/transition/TransitionValues;
    invoke-static {p3, v0}, Lc8/dh;->copyValues(Lc8/Ch;Landroid/transition/TransitionValues;)V

    .line 180
    :goto_1
    iget-object v2, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v2, p1, v1, v0}, Landroid/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    return-object v2

    .line 172
    .end local v0    # "internalEndValues":Landroid/transition/TransitionValues;
    .end local v1    # "internalStartValues":Landroid/transition/TransitionValues;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "internalStartValues":Landroid/transition/TransitionValues;
    goto :goto_0

    .line 178
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "internalEndValues":Landroid/transition/TransitionValues;
    goto :goto_1
.end method

.method public excludeChildren(IZ)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 191
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(IZ)Landroid/transition/Transition;

    .line 192
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 186
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Lc8/Yg;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 198
    return-object p0
.end method

.method public excludeTarget(IZ)Lc8/Yg;
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 210
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 203
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 204
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lc8/Yg;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;

    .line 216
    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lc8/Ch;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 274
    new-instance v0, Lc8/Ch;

    invoke-direct {v0}, Lc8/Ch;-><init>()V

    .line 275
    .local v0, "values":Lc8/Ch;
    iget-object v1, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v1, p1, p2}, Landroid/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-static {v1, v0}, Lc8/dh;->copyValues(Landroid/transition/TransitionValues;Lc8/Ch;)V

    .line 276
    return-object v0
.end method

.method public init(Lc8/Zg;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Lc8/Zg;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 102
    iput-object p1, p0, Lc8/dh;->mExternalTransition:Lc8/Zg;

    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v0, Lc8/ch;

    invoke-direct {v0, p1}, Lc8/ch;-><init>(Lc8/Zg;)V

    iput-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    .line 108
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 106
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/transition/Transition;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public removeListener(Lc8/ah;)Lc8/Yg;
    .locals 2
    .param p1, "listener"    # Lc8/ah;

    .prologue
    .line 122
    iget-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-object p0

    .line 125
    :cond_1
    iget-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    invoke-virtual {v0, p1}, Lc8/bh;->removeListener(Lc8/ah;)V

    .line 126
    iget-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    invoke-virtual {v0}, Lc8/bh;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/dh;->mCompatListener:Lc8/bh;

    goto :goto_0
.end method

.method public removeTarget(I)Lc8/Yg;
    .locals 2
    .param p1, "targetId"    # I

    .prologue
    .line 287
    if-lez p1, :cond_0

    .line 290
    invoke-virtual {p0}, Lc8/dh;->getTargetIds()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lc8/Yg;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 281
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 282
    return-object p0
.end method

.method public setDuration(J)Lc8/Yg;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 226
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 227
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Yg;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 238
    return-object p0
.end method

.method public setStartDelay(J)Lc8/Yg;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 253
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 254
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lc8/dh;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/transition/Transition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
