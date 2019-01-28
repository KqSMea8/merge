.class public Lc8/Og;
.super Lc8/Pg;
.source "SceneStaticsIcs.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Lc8/N;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/Pg;-><init>()V

    return-void
.end method


# virtual methods
.method public getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Lc8/Kg;
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "layoutId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    new-instance v0, Lc8/Jg;

    invoke-direct {v0}, Lc8/Jg;-><init>()V

    .line 31
    .local v0, "scene":Lc8/Jg;
    invoke-static {p1, p2, p3}, Lc8/Mg;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Lc8/Mg;

    move-result-object v1

    iput-object v1, v0, Lc8/Jg;->mScene:Lc8/Mg;

    .line 32
    return-object v0
.end method
