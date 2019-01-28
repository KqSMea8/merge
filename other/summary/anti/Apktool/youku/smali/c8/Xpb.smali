.class public Lc8/Xpb;
.super Lc8/qcg;
.source "WXRichText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wpb;
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Lc8/qcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 233
    return-void
.end method


# virtual methods
.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lc8/Xpb;->initComponentHostView(Landroid/content/Context;)Lc8/Zpb;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Lc8/Aeg;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lc8/Xpb;->initComponentHostView(Landroid/content/Context;)Lc8/Zpb;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lc8/Zpb;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 237
    new-instance v0, Lc8/Zpb;

    invoke-direct {v0, p1}, Lc8/Zpb;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
