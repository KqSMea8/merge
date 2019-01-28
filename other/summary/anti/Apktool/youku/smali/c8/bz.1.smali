.class public Lc8/bz;
.super Ljava/lang/Object;
.source "DelegateResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourcesProcessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method createNewResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "manager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Lc8/cz;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-direct {v0, p1, v1}, Lc8/cz;-><init>(Landroid/content/res/AssetManager;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public updateResources(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 819
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-ne v0, p1, :cond_0

    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    instance-of v0, v0, Lc8/cz;

    if-nez v0, :cond_1

    .line 822
    :cond_0
    invoke-virtual {p0, p1}, Lc8/bz;->createNewResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v0

    .line 823
    sput-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lc8/cz;->walkroundActionMenuTextColor(Landroid/content/res/Resources;)V

    .line 824
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lc8/wy;->injectResources(Landroid/app/Application;Landroid/content/res/Resources;)V

    .line 827
    :cond_1
    return-void
.end method
