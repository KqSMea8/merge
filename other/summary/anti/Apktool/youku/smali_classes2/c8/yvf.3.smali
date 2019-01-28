.class public Lc8/yvf;
.super Ljava/lang/Object;
.source "MemCacheBuilder.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zvf;->registerComponentCallbacks(Lc8/Fvf;)Lc8/Fvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zvf;

.field final synthetic val$memCache:Lc8/Fvf;


# direct methods
.method constructor <init>(Lc8/zvf;Lc8/Fvf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zvf;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/yvf;->this$0:Lc8/zvf;

    iput-object p2, p0, Lc8/yvf;->val$memCache:Lc8/Fvf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 106
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 94
    const-string/jumbo v1, "ImageCachePool"

    const-string/jumbo v2, "ComponentCallbacks2 onTrimMemory, level=%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_1

    .line 96
    iget-object v1, p0, Lc8/yvf;->val$memCache:Lc8/Fvf;

    invoke-interface {v1}, Lc8/Fvf;->clear()V

    .line 97
    const-string/jumbo v1, "ImageCachePool"

    const-string/jumbo v2, "clear all at TRIM_MEMORY_MODERATE"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/16 v1, 0x28

    if-lt p1, v1, :cond_0

    .line 99
    iget-object v1, p0, Lc8/yvf;->val$memCache:Lc8/Fvf;

    invoke-interface {v1}, Lc8/Fvf;->size()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 100
    .local v0, "size":I
    iget-object v1, p0, Lc8/yvf;->val$memCache:Lc8/Fvf;

    invoke-interface {v1, v0}, Lc8/Fvf;->trimTo(I)Z

    .line 101
    const-string/jumbo v1, "ImageCachePool"

    const-string/jumbo v2, "trim to size=%d at TRIM_MEMORY_BACKGROUND"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
