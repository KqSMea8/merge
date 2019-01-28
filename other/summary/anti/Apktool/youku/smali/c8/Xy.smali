.class public Lc8/Xy;
.super Landroid/content/ContextWrapper;
.source "ContextImplHook.java"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Xy;->classLoader:Ljava/lang/ClassLoader;

    .line 226
    iput-object p2, p0, Lc8/Xy;->classLoader:Ljava/lang/ClassLoader;

    .line 227
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lc8/Xy;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lc8/Xy;->classLoader:Ljava/lang/ClassLoader;

    .line 252
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 244
    invoke-virtual {p0}, Lc8/Xy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lc8/Xy;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    goto :goto_0
.end method
