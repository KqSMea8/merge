.class public Landroid/taobao/atlas/runtime/InstrumentationHook;
.super Landroid/app/Instrumentation;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/sz;,
        Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;
    }
.end annotation


# static fields
.field private static ErrorActivityRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstartAfterUpdate:Ljava/lang/Boolean;

.field public static sOnIntentRedirectListener:Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;


# instance fields
.field private context:Landroid/content/Context;

.field private mBase:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/taobao/atlas/runtime/InstrumentationHook;->ErrorActivityRecords:Ljava/util/List;

    .line 835
    const/4 v0, 0x0

    sput-object v0, Landroid/taobao/atlas/runtime/InstrumentationHook;->sFirstartAfterUpdate:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;Landroid/content/Context;)V
    .locals 0
    .param p1, "mBase"    # Landroid/app/Instrumentation;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 267
    iput-object p2, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->context:Landroid/content/Context;

    .line 268
    iput-object p1, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    .line 269
    return-void
.end method

.method private HandleResourceNotFound(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/Exception;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 753
    if-eqz p1, :cond_0

    sget-object v10, Landroid/taobao/atlas/runtime/InstrumentationHook;->ErrorActivityRecords:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 755
    sget-object v10, Landroid/taobao/atlas/runtime/InstrumentationHook;->ErrorActivityRecords:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 759
    :goto_0
    return-void

    .line 761
    :cond_0
    const/4 v4, 0x0

    .line 764
    .local v4, "exceptionString":Ljava/lang/String;
    :try_start_1
    sget-object v10, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    if-eqz v10, :cond_7

    .line 765
    sget-object v10, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    invoke-virtual {v10, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/Resources;

    .line 769
    .local v9, "resource":Landroid/content/res/Resources;
    :goto_1
    invoke-direct {p0, v9}, Landroid/taobao/atlas/runtime/InstrumentationHook;->getAssetPathFromResources(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v5

    .line 770
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-direct {p0, v10}, Landroid/taobao/atlas/runtime/InstrumentationHook;->getAssetPathFromResources(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v8

    .line 771
    .local v8, "pathsRuntime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-static {v10}, Lc8/cz;->getCurrentAssetpathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v7

    .line 772
    .local v7, "pathsOfHis":Ljava/lang/String;
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v10

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "bundleName":Ljava/lang/String;
    invoke-static {v1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 774
    .local v0, "b":Lc8/hy;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Paths: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 775
    if-eqz v0, :cond_5

    .line 776
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "bundlePath":Ljava/lang/String;
    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 778
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.1) Activity Resources path not contains:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 780
    :cond_1
    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 781
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.2) Activity Resources path not contains:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 783
    :cond_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 784
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.3) paths in history not contains:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 786
    :cond_3
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.4) Bundle archive file not exist:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 789
    :cond_4
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/XA;->CheckFileValidation(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 790
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.5) Bundle archive file can not opened with stream:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 793
    .end local v2    # "bundlePath":Ljava/lang/String;
    :cond_5
    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    if-ne v9, v10, :cond_6

    .line 794
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.6) DelegateResources equals Activity Resources"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 796
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(2.7) Activity Resources paths length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 801
    .end local v0    # "b":Lc8/hy;
    .end local v1    # "bundleName":Ljava/lang/String;
    .end local v5    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pathsOfHis":Ljava/lang/String;
    .end local v8    # "pathsRuntime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "resource":Landroid/content/res/Resources;
    :goto_2
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 767
    :cond_7
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    .restart local v9    # "resource":Landroid/content/res/Resources;
    goto/16 :goto_1

    .line 797
    .end local v9    # "resource":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 798
    .local v3, "e1":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v11}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-static {v11}, Lc8/cz;->getCurrentAssetpathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 799
    .local v6, "pathsInRunTime":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "(2.8) paths in history:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " getAssetPath fail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 759
    .end local v3    # "e1":Ljava/lang/Exception;
    .end local v4    # "exceptionString":Ljava/lang/String;
    .end local v6    # "pathsInRunTime":Ljava/lang/String;
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method private static TrackH5FallBack(Ljava/lang/String;)V
    .locals 3
    .param p0, "componentName"    # Ljava/lang/String;

    .prologue
    .line 524
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/Xx;->isInternalBundle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    goto :goto_0
.end method

.method private ValidateActivityResource(Landroid/app/Activity;)Z
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x1

    .line 709
    const/4 v3, 0x0

    .line 710
    .local v3, "exceptionString":Ljava/lang/String;
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v10

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "bundleName":Ljava/lang/String;
    invoke-static {v1}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 712
    .local v0, "b":Lc8/hy;
    const/4 v2, 0x0

    .line 713
    .local v2, "bundlePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 718
    :cond_0
    sget-object v10, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    if-eqz v10, :cond_2

    .line 719
    sget-object v10, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    invoke-virtual {v10, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/Resources;

    .line 723
    .local v7, "resource":Landroid/content/res/Resources;
    :goto_0
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    .line 724
    .local v8, "resource_runtime":Landroid/content/res/Resources;
    if-ne v7, v8, :cond_3

    .line 748
    :cond_1
    :goto_1
    return v9

    .line 721
    .end local v7    # "resource":Landroid/content/res/Resources;
    .end local v8    # "resource_runtime":Landroid/content/res/Resources;
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .restart local v7    # "resource":Landroid/content/res/Resources;
    goto :goto_0

    .line 727
    .restart local v8    # "resource_runtime":Landroid/content/res/Resources;
    :cond_3
    invoke-direct {p0, v7}, Landroid/taobao/atlas/runtime/InstrumentationHook;->getAssetPathFromResources(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 728
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-static {v10}, Lc8/cz;->getCurrentAssetpathStr(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v5

    .line 729
    .local v5, "pathsOfHis":Ljava/lang/String;
    invoke-direct {p0, v8}, Landroid/taobao/atlas/runtime/InstrumentationHook;->getAssetPathFromResources(Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v6

    .line 730
    .local v6, "pathsRuntime":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 731
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(1.1) Activity Resources path not contains:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 733
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(1.2) paths in history not contains:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 735
    :cond_4
    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 736
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(1.3) paths in runtime not contains:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    :cond_5
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 739
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(1.4) Bundle archive file not exist:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v11

    invoke-virtual {v11}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 741
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "(1.5) Activity Resources paths length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    :cond_7
    if-eqz v3, :cond_1

    .line 745
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method public static synthetic access$000(Landroid/taobao/atlas/runtime/InstrumentationHook;)Landroid/app/Instrumentation;
    .locals 1
    .param p0, "x0"    # Landroid/taobao/atlas/runtime/InstrumentationHook;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    return-object v0
.end method

.method private static assetPathsToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, "paths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 818
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "newDelegateResources ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 820
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 822
    .end local v0    # "path":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private asyncStartActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Lc8/sz;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundleName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I
    .param p5, "component"    # Ljava/lang/String;
    .param p6, "callback"    # Lc8/sz;

    .prologue
    .line 449
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v9

    .line 450
    .local v9, "current":Landroid/app/Activity;
    if-eqz v9, :cond_0

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Landroid/taobao/atlas/runtime/RuntimeVariables;->alertDialogUntilBundleProcessed(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v8

    .line 451
    .local v8, "dialog":Landroid/app/Dialog;
    :goto_0
    if-eqz v9, :cond_1

    if-nez v8, :cond_1

    .line 452
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "alertDialogUntilBundleProcessed can not return null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    .end local v8    # "dialog":Landroid/app/Dialog;
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 454
    .restart local v8    # "dialog":Landroid/app/Dialog;
    :cond_1
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Oy;->sizeOfActivityStack()I

    .line 455
    new-instance v18, Lc8/Uy;

    new-instance v3, Lc8/pz;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p3

    invoke-direct/range {v3 .. v9}, Lc8/pz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Context;Lc8/sz;Landroid/content/Intent;Landroid/app/Dialog;Landroid/app/Activity;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lc8/Uy;-><init>(Ljava/lang/Runnable;)V

    .line 481
    .local v18, "successTask":Lc8/Uy;
    new-instance v17, Lc8/Uy;

    new-instance v10, Lc8/qz;

    move-object/from16 v11, p0

    move-object v12, v9

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    move-object/from16 v16, v8

    invoke-direct/range {v10 .. v16}, Lc8/qz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/Dialog;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lc8/Uy;-><init>(Ljava/lang/Runnable;)V

    .line 501
    .local v17, "failedTask":Lc8/Uy;
    if-eqz v8, :cond_3

    .line 502
    new-instance v3, Lc8/rz;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v3, v0, v1, v2}, Lc8/rz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Lc8/Uy;Lc8/Uy;)V

    invoke-virtual {v8, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 509
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lc8/Vy;->checkBundleStateAsync(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 510
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v3

    if-eqz v3, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ge v3, v4, :cond_3

    .line 511
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v8}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 513
    :try_start_0
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 514
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    sput-object v8, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private checkIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x25800

    .line 680
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 683
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    if-le v7, v11, :cond_0

    .line 684
    const-string/jumbo v7, "url size:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    array-length v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 685
    const-string/jumbo v7, "too long url"

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 688
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 689
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 690
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    .line 691
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 692
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 693
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_1

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 694
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v4, v7

    .line 695
    .local v4, "size":I
    if-le v4, v11, :cond_1

    .line 696
    const-string/jumbo v7, "arg size:%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 697
    const-string/jumbo v7, "too long arg"

    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "size":I
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/sz;)Landroid/app/Instrumentation$ActivityResult;
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "callback"    # Lc8/sz;

    .prologue
    .line 362
    if-eqz p2, :cond_0

    .line 363
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lc8/dy;->checkDownGradeToH5(Landroid/content/Intent;)V

    .line 366
    :cond_0
    const/4 v13, 0x0

    .line 367
    .local v13, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 369
    .local v10, "componentName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 370
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_1

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 372
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 379
    :cond_1
    :goto_0
    if-nez v10, :cond_3

    .line 380
    const/4 v15, 0x0

    .line 383
    .local v15, "result":Landroid/app/Instrumentation$ActivityResult;
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lc8/sz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 431
    .end local v15    # "result":Landroid/app/Instrumentation$ActivityResult;
    :goto_1
    return-object v15

    .line 375
    :cond_2
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 384
    .restart local v15    # "result":Landroid/app/Instrumentation$ActivityResult;
    :catch_0
    move-exception v11

    .line 385
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 392
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Landroid/app/Instrumentation$ActivityResult;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Lc8/aB;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 393
    sget-object v2, Landroid/taobao/atlas/runtime/InstrumentationHook;->sOnIntentRedirectListener:Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;

    if-eqz v2, :cond_4

    .line 394
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v16

    .line 395
    .local v16, "sourceActivity":Landroid/app/Activity;
    sget-object v2, Landroid/taobao/atlas/runtime/InstrumentationHook;->sOnIntentRedirectListener:Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v13, v10, v1}, Landroid/taobao/atlas/runtime/InstrumentationHook$OnIntentRedirectListener;->onExternalRedirect(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 396
    const-string/jumbo v2, "InstrumentationHook"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fiter app"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v15, 0x0

    goto :goto_1

    .line 400
    .end local v16    # "sourceActivity":Landroid/app/Activity;
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lc8/sz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v15

    goto :goto_1

    .line 403
    :cond_5
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v2

    invoke-virtual {v2, v10}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    .local v4, "bundleName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v4}, Lc8/dy;->isDisableBundle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 405
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v2

    invoke-virtual {v2, v4}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v12

    check-cast v12, Lc8/hy;

    .line 406
    .local v12, "impl":Lc8/hy;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lc8/hy;->checkValidate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 407
    invoke-virtual/range {p4 .. p4}, Lc8/sz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v15

    goto :goto_1

    .line 409
    :cond_6
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-nez v2, :cond_7

    .line 410
    move-object v7, v10

    .local v7, "component":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    .line 411
    invoke-direct/range {v2 .. v8}, Landroid/taobao/atlas/runtime/InstrumentationHook;->asyncStartActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Lc8/sz;)V

    .line 417
    .end local v7    # "component":Ljava/lang/String;
    :goto_2
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 413
    :cond_7
    invoke-virtual/range {p4 .. p4}, Lc8/sz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;

    .line 414
    const-string/jumbo v2, "InsturmentationHook"

    const-string/jumbo v3, "patch execStartActivity finish"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 423
    .end local v12    # "impl":Lc8/hy;
    :cond_8
    :try_start_1
    invoke-static {}, Lc8/py;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 424
    .local v9, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v9, :cond_9

    .line 425
    invoke-virtual/range {p4 .. p4}, Lc8/sz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    goto/16 :goto_1

    .line 428
    .end local v9    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v10}, Landroid/taobao/atlas/runtime/InstrumentationHook;->fallBackToClassNotFoundCallback(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 431
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_1
.end method

.method public static fallBackToClassNotFoundCallback(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {}, Lc8/py;->getClassNotFoundCallback()Lc8/Wy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    invoke-static {p2}, Landroid/taobao/atlas/runtime/InstrumentationHook;->TrackH5FallBack(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    invoke-static {}, Lc8/py;->getClassNotFoundCallback()Lc8/Wy;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/Wy;->returnIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 445
    :cond_1
    return-void
.end method

.method private getAssetPathFromResources(Landroid/content/res/Resources;)Ljava/util/List;
    .locals 3
    .param p1, "resource"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    const/4 v2, 0x0

    .line 808
    .local v2, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 809
    .local v0, "asset":Landroid/content/res/AssetManager;
    invoke-static {v0}, Lc8/cz;->getCurrentAssetPath(Landroid/content/res/AssetManager;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 813
    .end local v0    # "asset":Landroid/content/res/AssetManager;
    :goto_0
    return-object v2

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isAppFirstStartAfterUpdated()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 837
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 838
    sget-object v2, Landroid/taobao/atlas/runtime/InstrumentationHook;->sFirstartAfterUpdate:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 839
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 840
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "atlas_appIsUpdated"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 841
    sput-object v2, Landroid/taobao/atlas/runtime/InstrumentationHook;->sFirstartAfterUpdate:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "atlas_appIsUpdated"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 843
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 846
    :cond_0
    sget-object v1, Landroid/taobao/atlas/runtime/InstrumentationHook;->sFirstartAfterUpdate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 848
    :cond_1
    return v1
.end method

.method public static notifyAppUpdated()V
    .locals 4

    .prologue
    .line 827
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 828
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 829
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 830
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "atlas_appIsUpdated"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 831
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 833
    :cond_0
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    .line 983
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .locals 1
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .prologue
    .line 988
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 978
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 979
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 615
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 616
    iget-object v8, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v8, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 676
    :goto_0
    return-void

    .line 619
    :cond_0
    new-instance v5, Lc8/Xy;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Lc8/Xy;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 620
    .local v5, "hook":Lc8/Xy;
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    if-eq v8, v9, :cond_1

    .line 622
    :try_start_0
    sget-object v8, Lc8/xy;->ContextImpl_mResources:Lc8/Cy;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v9, v10}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 625
    :cond_1
    :goto_1
    sget-object v8, Lc8/xy;->ContextThemeWrapper_mBase:Lc8/Cy;

    if-eqz v8, :cond_2

    sget-object v8, Lc8/xy;->ContextThemeWrapper_mBase:Lc8/Cy;

    invoke-virtual {v8}, Lc8/Cy;->getField()Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 626
    sget-object v8, Lc8/xy;->ContextThemeWrapper_mBase:Lc8/Cy;

    invoke-virtual {v8, p1, v5}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 628
    :cond_2
    sget-object v8, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    if-eqz v8, :cond_3

    .line 630
    sget-object v8, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v8, p1, v9}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 632
    :cond_3
    sget-object v8, Lc8/xy;->ContextWrapper_mBase:Lc8/Cy;

    invoke-virtual {v8, p1, v5}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    instance-of v8, v8, Lc8/fy;

    if-eqz v8, :cond_8

    .line 635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    check-cast v2, Lc8/fy;

    .line 636
    .local v2, "bundleClassLoader":Lc8/fy;
    invoke-virtual {v2}, Lc8/fy;->getBundle()Lc8/hy;

    move-result-object v1

    .line 637
    .local v1, "bundle":Lc8/hy;
    invoke-virtual {v1}, Lc8/hy;->startBundle()V

    .line 645
    .end local v1    # "bundle":Lc8/hy;
    .end local v2    # "bundleClassLoader":Lc8/fy;
    :cond_4
    :goto_2
    const-string/jumbo v6, ""

    .line 646
    .local v6, "launchActivityName":Ljava/lang/String;
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 647
    .local v7, "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v7, :cond_5

    .line 648
    sget-object v8, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    .line 649
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 651
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 652
    const-string/jumbo v6, "com.taobao.tao.welcome.Welcome"

    .line 654
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 655
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 657
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 658
    iget-object v8, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v8, p1, v11}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 638
    .end local v6    # "launchActivityName":Ljava/lang/String;
    .end local v7    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_8
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "Location":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 640
    invoke-static {v0}, Lc8/py;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v1

    check-cast v1, Lc8/hy;

    .line 641
    .restart local v1    # "bundle":Lc8/hy;
    if-eqz v1, :cond_4

    .line 642
    invoke-virtual {v1}, Lc8/hy;->startBundle()V

    goto :goto_2

    .line 661
    .end local v0    # "Location":Ljava/lang/String;
    .end local v1    # "bundle":Lc8/hy;
    .restart local v6    # "launchActivityName":Ljava/lang/String;
    .restart local v7    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_9
    :try_start_1
    invoke-static {}, Landroid/taobao/atlas/runtime/InstrumentationHook;->isAppFirstStartAfterUpdated()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 662
    iget-object v8, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 666
    :catch_0
    move-exception v4

    .line 667
    .local v4, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "android.content.res.Resources"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Error inflating class"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 668
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "java.lang.ArrayIndexOutOfBoundsException"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 669
    :cond_a
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "OutOfMemoryError"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 670
    invoke-direct {p0, p1, p2, v4}, Landroid/taobao/atlas/runtime/InstrumentationHook;->HandleResourceNotFound(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 664
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :cond_b
    :try_start_2
    iget-object v8, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v8, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 672
    .restart local v4    # "e":Ljava/lang/RuntimeException;
    :cond_c
    throw v4

    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "launchActivityName":Ljava/lang/String;
    .end local v7    # "launchIntentForPackage":Landroid/content/Intent;
    :catch_1
    move-exception v8

    goto/16 :goto_1
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1067
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 1068
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1087
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1119
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 1120
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1080
    invoke-static {}, Landroid/taobao/atlas/runtime/InstrumentationHook;->isAppFirstStartAfterUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1081
    .local v0, "saveInstance":Landroid/os/Bundle;
    :goto_0
    iget-object v1, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v1, p1, v0}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1082
    return-void

    .end local v0    # "saveInstance":Landroid/os/Bundle;
    :cond_0
    move-object v0, p2

    .line 1080
    goto :goto_0
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1096
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 1097
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1072
    invoke-static {}, Landroid/taobao/atlas/runtime/InstrumentationHook;->isAppFirstStartAfterUpdated()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1073
    .local v0, "saveInstance":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v1, p1, v0}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1076
    :cond_0
    return-void

    .end local v0    # "saveInstance":Landroid/os/Bundle;
    :cond_1
    move-object v0, p2

    .line 1072
    goto :goto_0
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1101
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 1102
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1111
    const-string/jumbo v0, "atlas_real_activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lc8/py;->isUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1091
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 1092
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1106
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 1107
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 1125
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 1062
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 1063
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .locals 1
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "minHits"    # I

    .prologue
    .line 993
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result v0

    return v0
.end method

.method public endPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 914
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I

    .prologue
    .line 274
    new-instance v0, Lc8/iz;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lc8/iz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Intent;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;I)V

    invoke-direct {p0, p1, p5, p6, v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/sz;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 293
    new-instance v0, Lc8/kz;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lc8/kz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Intent;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1, p5, p6, v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/sz;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lc8/mz;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lc8/mz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Intent;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;I)V

    invoke-direct {p0, p1, p5, p6, v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/sz;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lc8/oz;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lc8/oz;-><init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Intent;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1, p5, p6, v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/sz;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 898
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 899
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .locals 1
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .prologue
    .line 1018
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .locals 1
    .param p1, "targetActivity"    # Landroid/app/Activity;
    .param p2, "id"    # I
    .param p3, "flag"    # I

    .prologue
    .line 1013
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public isProfiling()Z
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 13
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v12

    .line 546
    .local v12, "activity":Landroid/app/Activity;
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p6

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    sget-object v1, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    if-eqz v1, :cond_0

    .line 549
    sget-object v1, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v12, v2}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 552
    :cond_0
    return-object v12
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 12
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 562
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 563
    const-string/jumbo v9, "android.taobao.atlas.mainAct.wait"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 569
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v9

    invoke-virtual {v9, p2}, Lc8/Xx;->getBundleInfo(Ljava/lang/String;)Lc8/Yx;

    move-result-object v4

    .line 570
    .local v4, "info":Lc8/Yx;
    if-eqz v4, :cond_3

    .line 571
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v9

    invoke-virtual {v4}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v3

    check-cast v3, Lc8/hy;

    .line 572
    .local v3, "impl":Lc8/hy;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lc8/hy;->checkValidate()Z

    move-result v9

    if-nez v9, :cond_3

    .line 573
    :cond_1
    const-string/jumbo v9, "Instrumentation"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "bundleInvalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v9, Ljava/lang/ClassNotFoundException;

    const-string/jumbo v10, "bundleInvalid"

    invoke-direct {v9, v10}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 578
    .end local v3    # "impl":Lc8/hy;
    .end local v4    # "info":Lc8/Yx;
    :catch_0
    move-exception v2

    .line 579
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v5, ""

    .line 580
    .local v5, "launchActivityName":Ljava/lang/String;
    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 581
    .local v6, "launchIntentForPackage":Landroid/content/Intent;
    if-eqz v6, :cond_2

    .line 582
    sget-object v9, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v9}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 583
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 585
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 586
    throw v2

    .line 577
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "launchActivityName":Ljava/lang/String;
    .end local v6    # "launchIntentForPackage":Landroid/content/Intent;
    .restart local v4    # "info":Lc8/Yx;
    :cond_3
    :try_start_2
    iget-object v9, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v9, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 604
    .end local v4    # "info":Lc8/Yx;
    .local v0, "activity":Landroid/app/Activity;
    :goto_1
    instance-of v9, p1, Lc8/Yy;

    if-eqz v9, :cond_4

    .line 605
    sget-object v9, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    if-eqz v9, :cond_4

    .line 607
    sget-object v9, Lc8/xy;->ContextThemeWrapper_mResources:Lc8/Cy;

    sget-object v10, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v9, v0, v10}, Lc8/Cy;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    :cond_4
    return-object v0

    .line 588
    .end local v0    # "activity":Landroid/app/Activity;
    .restart local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "launchActivityName":Ljava/lang/String;
    .restart local v6    # "launchIntentForPackage":Landroid/content/Intent;
    :cond_5
    iget-object v9, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->context:Landroid/content/Context;

    const-string/jumbo v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 589
    .local v7, "manager":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 590
    .local v8, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 591
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    .line 592
    invoke-static {}, Lc8/py;->getClassNotFoundCallback()Lc8/Wy;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 593
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_6

    .line 594
    iget-object v9, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->context:Landroid/content/Context;

    invoke-virtual {p3, v9, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    :cond_6
    invoke-static {}, Lc8/py;->getClassNotFoundCallback()Lc8/Wy;

    move-result-object v9

    invoke-interface {v9, p3}, Lc8/Wy;->returnIntent(Landroid/content/Intent;)Landroid/content/Intent;

    .line 601
    :cond_7
    iget-object v9, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v9, p1, v5, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .restart local v0    # "activity":Landroid/app/Activity;
    goto :goto_1

    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "launchActivityName":Ljava/lang/String;
    .end local v6    # "launchIntentForPackage":Landroid/content/Intent;
    .end local v7    # "manager":Landroid/app/ActivityManager;
    .end local v8    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1053
    if-eqz p2, :cond_0

    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Oy;->clearActivityStack()V

    .line 1055
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1057
    :cond_0
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 859
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 860
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 919
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x1

    .line 874
    instance-of v4, p1, Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lc8/fy;

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 876
    :try_start_0
    const-class v4, Lc8/fy;

    const-string/jumbo v5, "location"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 877
    .local v2, "locationField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 879
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 880
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 881
    .local v0, "impl":Lc8/hy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/hy;->checkValidate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 882
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    .end local v0    # "impl":Lc8/hy;
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "locationField":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    :catch_0
    move-exception v3

    :cond_0
    iget-object v3, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v3, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    .line 870
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .locals 1
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 1008
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 1009
    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runner"    # Ljava/lang/Runnable;

    .prologue
    .line 968
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 969
    return-void
.end method

.method public sendCharacterSync(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V

    .line 1039
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 1033
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 1034
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1028
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 1029
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1044
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;

    .prologue
    .line 893
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 894
    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1023
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendTrackballEventSync(Landroid/view/MotionEvent;)V

    .line 1049
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->setAutomaticPerformanceSnapshots()V

    .line 904
    return-void
.end method

.method public setInTouchMode(Z)V
    .locals 1
    .param p1, "inTouch"    # Z

    .prologue
    .line 953
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 954
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->start()V

    .line 865
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 973
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startAllocCounting()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startAllocCounting()V

    .line 1130
    return-void
.end method

.method public startPerformanceSnapshot()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    .line 909
    return-void
.end method

.method public startProfiling()V
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startProfiling()V

    .line 944
    return-void
.end method

.method public stopAllocCounting()V
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopAllocCounting()V

    .line 1135
    return-void
.end method

.method public stopProfiling()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopProfiling()V

    .line 949
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "recipient"    # Ljava/lang/Runnable;

    .prologue
    .line 958
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForIdle(Ljava/lang/Runnable;)V

    .line 959
    return-void
.end method

.method public waitForIdleSync()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 964
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .locals 1
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;

    .prologue
    .line 998
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .locals 2
    .param p1, "monitor"    # Landroid/app/Instrumentation$ActivityMonitor;
    .param p2, "timeOut"    # J

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/taobao/atlas/runtime/InstrumentationHook;->mBase:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
