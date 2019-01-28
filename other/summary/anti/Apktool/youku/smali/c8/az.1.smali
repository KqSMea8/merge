.class public Lc8/az;
.super Lc8/bz;
.source "DelegateResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiuiResourcesProcessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 834
    invoke-direct {p0}, Lc8/bz;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method createNewResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 8
    .param p1, "manager"    # Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 837
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-gt v2, v3, :cond_0

    .line 838
    const-string/jumbo v2, "android.content.res.MiuiResources"

    invoke-static {v2}, Lc8/az;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 839
    .local v1, "miuiResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/res/AssetManager;

    aput-object v3, v2, v5

    const-class v3, Landroid/util/DisplayMetrics;

    aput-object v3, v2, v4

    const-class v3, Landroid/content/res/Configuration;

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 840
    .local v0, "miuiCons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 841
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    aput-object v3, v2, v4

    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    .line 842
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    aput-object v3, v2, v6

    .line 841
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Resources;

    .line 844
    .end local v0    # "miuiCons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "miuiResClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Lc8/bz;->createNewResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0
.end method
