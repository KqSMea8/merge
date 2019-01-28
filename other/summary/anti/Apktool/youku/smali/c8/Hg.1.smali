.class public Lc8/Hg;
.super Ljava/lang/Object;
.source "Scene.java"


# static fields
.field private static sImpl:Lc8/Pg;


# instance fields
.field mImpl:Lc8/Kg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 41
    new-instance v0, Lc8/Ng;

    invoke-direct {v0}, Lc8/Ng;-><init>()V

    sput-object v0, Lc8/Hg;->sImpl:Lc8/Pg;

    .line 47
    :goto_0
    return-void

    .line 42
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 43
    new-instance v0, Lc8/Qg;

    invoke-direct {v0}, Lc8/Qg;-><init>()V

    sput-object v0, Lc8/Hg;->sImpl:Lc8/Pg;

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lc8/Og;

    invoke-direct {v0}, Lc8/Og;-><init>()V

    sput-object v0, Lc8/Hg;->sImpl:Lc8/Pg;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0}, Lc8/Hg;->createSceneImpl()Lc8/Kg;

    move-result-object v0

    iput-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    .line 63
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0, p1}, Lc8/Kg;->init(Landroid/view/ViewGroup;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layout"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Lc8/Hg;->createSceneImpl()Lc8/Kg;

    move-result-object v0

    iput-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    .line 78
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0, p1, p2}, Lc8/Kg;->init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lc8/Kg;)V
    .locals 0
    .param p1, "scene"    # Lc8/Kg;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    .line 83
    return-void
.end method

.method private createSceneImpl()Lc8/Kg;
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 122
    new-instance v0, Lc8/Ig;

    invoke-direct {v0}, Lc8/Ig;-><init>()V

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 124
    new-instance v0, Lc8/Lg;

    invoke-direct {v0}, Lc8/Lg;-><init>()V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Lc8/Jg;

    invoke-direct {v0}, Lc8/Jg;-><init>()V

    goto :goto_0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Lc8/Hg;
    .locals 4
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 104
    sget v3, Lcom/youku/phone/R$id;->transition_scene_layoutid_cache:I

    .line 105
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 106
    .local v2, "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    if-nez v2, :cond_0

    .line 107
    new-instance v2, Landroid/util/SparseArray;

    .end local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 108
    .restart local v2    # "scenes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/support/transition/Scene;>;"
    sget v3, Lcom/youku/phone/R$id;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 110
    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Hg;

    .line 111
    .local v0, "scene":Lc8/Hg;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 116
    .end local v0    # "scene":Lc8/Hg;
    .local v1, "scene":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 114
    .end local v1    # "scene":Ljava/lang/Object;
    .restart local v0    # "scene":Lc8/Hg;
    :cond_1
    new-instance v0, Lc8/Hg;

    .end local v0    # "scene":Lc8/Hg;
    sget-object v3, Lc8/Hg;->sImpl:Lc8/Pg;

    invoke-virtual {v3, p0, p1, p2}, Lc8/Pg;->getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Lc8/Kg;

    move-result-object v3

    invoke-direct {v0, v3}, Lc8/Hg;-><init>(Lc8/Kg;)V

    .line 115
    .restart local v0    # "scene":Lc8/Hg;
    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 116
    .restart local v1    # "scene":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0}, Lc8/Kg;->enter()V

    .line 165
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0}, Lc8/Kg;->exit()V

    .line 151
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0}, Lc8/Kg;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0, p1}, Lc8/Kg;->setEnterAction(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 205
    iget-object v0, p0, Lc8/Hg;->mImpl:Lc8/Kg;

    invoke-virtual {v0, p1}, Lc8/Kg;->setExitAction(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
