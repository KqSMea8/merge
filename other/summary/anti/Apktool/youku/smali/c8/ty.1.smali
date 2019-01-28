.class public Lc8/ty;
.super Lcom/ali/mobisecenhance/DexClassLoader;
.source "BundleArchiveRevision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uy;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uy;


# direct methods
.method constructor <init>(Lc8/uy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "this$0"    # Lc8/uy;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/ClassLoader;

    .prologue
    .line 740
    iput-object p1, p0, Lc8/ty;->this$0:Lc8/uy;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ali/mobisecenhance/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 743
    invoke-super {p0, p1}, Lcom/ali/mobisecenhance/DexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 745
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lc8/ty;->this$0:Lc8/uy;

    invoke-virtual {v4, v1}, Lc8/uy;->findSoLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 747
    .local v3, "soFile":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 748
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 757
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "soFile":Ljava/io/File;
    :goto_0
    return-object v4

    .line 751
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v3    # "soFile":Ljava/io/File;
    :cond_0
    :try_start_0
    sget-object v4, Lc8/xy;->ClassLoader_findLibrary:Lc8/Dy;

    invoke-static {}, Lc8/py;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 755
    const/4 v4, 0x0

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "soFile":Ljava/io/File;
    :cond_1
    move-object v4, v2

    .line 757
    goto :goto_0
.end method
