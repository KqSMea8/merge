.class public Lc8/Bh;
.super Lc8/uh;
.source "TransitionSetPort.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ah;
    }
.end annotation


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# instance fields
.field mCurrentListeners:I

.field private mPlayTogether:Z

.field mStarted:Z

.field mTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/uh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lc8/uh;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Bh;->mStarted:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Bh;->mPlayTogether:Z

    .line 59
    return-void
.end method

.method private setupStartEndListeners()V
    .locals 4

    .prologue
    .line 162
    new-instance v1, Lc8/Ah;

    invoke-direct {v1, p0}, Lc8/Ah;-><init>(Lc8/Bh;)V

    .line 163
    .local v1, "listener":Lc8/Ah;
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uh;

    .line 164
    .local v0, "childTransition":Lc8/uh;
    invoke-virtual {v0, v1}, Lc8/uh;->addListener(Lc8/sh;)Lc8/uh;

    goto :goto_0

    .line 166
    .end local v0    # "childTransition":Lc8/uh;
    :cond_0
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lc8/Bh;->mCurrentListeners:I

    .line 167
    return-void
.end method


# virtual methods
.method public addListener(Lc8/sh;)Lc8/Bh;
    .locals 1
    .param p1, "listener"    # Lc8/sh;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lc8/uh;->addListener(Lc8/sh;)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public bridge synthetic addListener(Lc8/sh;)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->addListener(Lc8/sh;)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public addTarget(I)Lc8/Bh;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 127
    invoke-super {p0, p1}, Lc8/uh;->addTarget(I)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public addTarget(Landroid/view/View;)Lc8/Bh;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lc8/uh;->addTarget(Landroid/view/View;)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public bridge synthetic addTarget(I)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->addTarget(I)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addTarget(Landroid/view/View;)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->addTarget(Landroid/view/View;)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public addTransition(Lc8/uh;)Lc8/Bh;
    .locals 4
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iput-object p0, p1, Lc8/uh;->mParent:Lc8/Bh;

    .line 84
    iget-wide v0, p0, Lc8/Bh;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 85
    iget-wide v0, p0, Lc8/Bh;->mDuration:J

    invoke-virtual {p1, v0, v1}, Lc8/uh;->setDuration(J)Lc8/uh;

    .line 88
    :cond_0
    return-object p0
.end method

.method protected cancel()V
    .locals 3
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 268
    invoke-super {p0}, Lc8/uh;->cancel()V

    .line 269
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 270
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 271
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    invoke-virtual {v2}, Lc8/uh;->cancel()V

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public captureEndValues(Lc8/Ch;)V
    .locals 6
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 232
    iget-object v2, p1, Lc8/Ch;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 233
    .local v1, "targetId":I
    iget-object v2, p1, Lc8/Ch;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Lc8/Bh;->isValidTarget(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uh;

    .line 235
    .local v0, "childTransition":Lc8/uh;
    iget-object v3, p1, Lc8/Ch;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lc8/uh;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    invoke-virtual {v0, p1}, Lc8/uh;->captureEndValues(Lc8/Ch;)V

    goto :goto_0

    .line 240
    .end local v0    # "childTransition":Lc8/uh;
    :cond_1
    return-void
.end method

.method public captureStartValues(Lc8/Ch;)V
    .locals 6
    .param p1, "transitionValues"    # Lc8/Ch;

    .prologue
    .line 220
    iget-object v2, p1, Lc8/Ch;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 221
    .local v1, "targetId":I
    iget-object v2, p1, Lc8/Ch;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {p0, v2, v4, v5}, Lc8/Bh;->isValidTarget(Landroid/view/View;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uh;

    .line 223
    .local v0, "childTransition":Lc8/uh;
    iget-object v3, p1, Lc8/Ch;->view:Landroid/view/View;

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lc8/uh;->isValidTarget(Landroid/view/View;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Lc8/uh;->captureStartValues(Lc8/Ch;)V

    goto :goto_0

    .line 228
    .end local v0    # "childTransition":Lc8/uh;
    :cond_1
    return-void
.end method

.method public clone()Lc8/Bh;
    .locals 4

    .prologue
    .line 305
    invoke-super {p0}, Lc8/uh;->clone()Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    .line 306
    .local v0, "clone":Lc8/Bh;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    .line 307
    iget-object v3, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 308
    .local v2, "numTransitions":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 309
    iget-object v3, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uh;

    invoke-virtual {v3}, Lc8/uh;->clone()Lc8/uh;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc8/Bh;->addTransition(Lc8/uh;)Lc8/Bh;

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lc8/Bh;->clone()Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lc8/Bh;->clone()Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Lc8/Dh;Lc8/Dh;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Lc8/Dh;
    .param p3, "endValues"    # Lc8/Dh;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v1, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uh;

    .line 177
    .local v0, "childTransition":Lc8/uh;
    invoke-virtual {v0, p1, p2, p3}, Lc8/uh;->createAnimators(Landroid/view/ViewGroup;Lc8/Dh;Lc8/Dh;)V

    goto :goto_0

    .line 179
    .end local v0    # "childTransition":Lc8/uh;
    :cond_0
    return-void
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lc8/Bh;->mPlayTogether:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 246
    invoke-super {p0, p1}, Lc8/uh;->pause(Landroid/view/View;)V

    .line 247
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 248
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 249
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    invoke-virtual {v2, p1}, Lc8/uh;->pause(Landroid/view/View;)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method

.method public removeListener(Lc8/sh;)Lc8/Bh;
    .locals 1
    .param p1, "listener"    # Lc8/sh;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lc8/uh;->removeListener(Lc8/sh;)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public bridge synthetic removeListener(Lc8/sh;)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->removeListener(Lc8/sh;)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public removeTarget(I)Lc8/Bh;
    .locals 1
    .param p1, "targetId"    # I

    .prologue
    .line 137
    invoke-super {p0, p1}, Lc8/uh;->removeTarget(I)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public removeTarget(Landroid/view/View;)Lc8/Bh;
    .locals 1
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lc8/uh;->removeTarget(Landroid/view/View;)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public bridge synthetic removeTarget(I)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->removeTarget(I)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeTarget(Landroid/view/View;)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->removeTarget(Landroid/view/View;)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public removeTransition(Lc8/uh;)Lc8/Bh;
    .locals 1
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 151
    iget-object v0, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 152
    const/4 v0, 0x0

    iput-object v0, p1, Lc8/uh;->mParent:Lc8/Bh;

    .line 153
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 257
    invoke-super {p0, p1}, Lc8/uh;->resume(Landroid/view/View;)V

    .line 258
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 259
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 260
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    invoke-virtual {v2, p1}, Lc8/uh;->resume(Landroid/view/View;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method protected runAnimators()V
    .locals 7
    .annotation build Lc8/O;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v5, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    invoke-virtual {p0}, Lc8/Bh;->start()V

    .line 189
    invoke-virtual {p0}, Lc8/Bh;->end()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0}, Lc8/Bh;->setupStartEndListeners()V

    .line 193
    iget-boolean v5, p0, Lc8/Bh;->mPlayTogether:Z

    if-nez v5, :cond_3

    .line 196
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 197
    iget-object v5, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/uh;

    .line 198
    .local v4, "previousTransition":Lc8/uh;
    iget-object v5, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uh;

    .line 199
    .local v3, "nextTransition":Lc8/uh;
    new-instance v5, Lc8/zh;

    invoke-direct {v5, p0, v3}, Lc8/zh;-><init>(Lc8/Bh;Lc8/uh;)V

    invoke-virtual {v4, v5}, Lc8/uh;->addListener(Lc8/sh;)Lc8/uh;

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v3    # "nextTransition":Lc8/uh;
    .end local v4    # "previousTransition":Lc8/uh;
    :cond_2
    iget-object v5, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/uh;

    .line 208
    .local v1, "firstTransition":Lc8/uh;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lc8/uh;->runAnimators()V

    goto :goto_0

    .line 212
    .end local v1    # "firstTransition":Lc8/uh;
    .end local v2    # "i":I
    :cond_3
    iget-object v5, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uh;

    .line 213
    .local v0, "childTransition":Lc8/uh;
    invoke-virtual {v0}, Lc8/uh;->runAnimators()V

    goto :goto_2
.end method

.method setCanRemoveViews(Z)V
    .locals 3
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 287
    invoke-super {p0, p1}, Lc8/uh;->setCanRemoveViews(Z)V

    .line 288
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 289
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 290
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    invoke-virtual {v2, p1}, Lc8/uh;->setCanRemoveViews(Z)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method

.method public setDuration(J)Lc8/Bh;
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lc8/uh;->setDuration(J)Lc8/uh;

    .line 101
    iget-wide v2, p0, Lc8/Bh;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 102
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 103
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 104
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    invoke-virtual {v2, p1, p2}, Lc8/uh;->setDuration(J)Lc8/uh;

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    .end local v1    # "numTransitions":I
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lc8/Bh;->setDuration(J)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Bh;
    .locals 1
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lc8/uh;->setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public bridge synthetic setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->setInterpolator(Landroid/animation/TimeInterpolator;)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public setOrdering(I)Lc8/Bh;
    .locals 3
    .param p1, "ordering"    # I

    .prologue
    .line 66
    packed-switch p1, :pswitch_data_0

    .line 74
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Bh;->mPlayTogether:Z

    .line 77
    :goto_0
    return-object p0

    .line 71
    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Bh;->mPlayTogether:Z

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Lc8/Bh;
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 277
    invoke-super {p0, p1}, Lc8/uh;->setSceneRoot(Landroid/view/ViewGroup;)Lc8/uh;

    .line 278
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 279
    .local v1, "numTransitions":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 280
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    invoke-virtual {v2, p1}, Lc8/uh;->setSceneRoot(Landroid/view/ViewGroup;)Lc8/uh;

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-object p0
.end method

.method bridge synthetic setSceneRoot(Landroid/view/ViewGroup;)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lc8/Bh;->setSceneRoot(Landroid/view/ViewGroup;)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method public setStartDelay(J)Lc8/Bh;
    .locals 1
    .param p1, "startDelay"    # J

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lc8/uh;->setStartDelay(J)Lc8/uh;

    move-result-object v0

    check-cast v0, Lc8/Bh;

    return-object v0
.end method

.method public bridge synthetic setStartDelay(J)Lc8/uh;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lc8/Bh;->setStartDelay(J)Lc8/Bh;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-super {p0, p1}, Lc8/uh;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lc8/Bh;->mTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/uh;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lc8/uh;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-object v1
.end method
