.class public Lc8/th;
.super Ljava/lang/Object;
.source "TransitionPort.java"

# interfaces
.implements Lc8/sh;


# annotations
.annotation build Lc8/O;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 1213
    return-void
.end method

.method public onTransitionEnd(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 1209
    return-void
.end method

.method public onTransitionPause(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 1217
    return-void
.end method

.method public onTransitionResume(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 1221
    return-void
.end method

.method public onTransitionStart(Lc8/uh;)V
    .locals 0
    .param p1, "transition"    # Lc8/uh;

    .prologue
    .line 1205
    return-void
.end method
