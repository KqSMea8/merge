.class public Lc8/xLd;
.super Ljava/lang/Object;
.source "FileStore.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lc8/xLd;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/xLd;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMapFromFile(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    :try_start_0
    sget-object v4, Lc8/xLd;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Attempting to retrieve map from: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-static {v4, v5, v6}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 75
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v2, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 77
    .local v3, "varsMap":Ljava/util/Map;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 78
    sget-object v4, Lc8/xLd;->TAG:Ljava/lang/String;

    const-string/jumbo v5, " + Retrieved map from file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v4, v5, v6}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local v3    # "varsMap":Ljava/util/Map;
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ioe":Ljava/lang/Exception;
    :goto_1
    sget-object v4, Lc8/xLd;->TAG:Ljava/lang/String;

    const-string/jumbo v5, " + Exception getting vars map: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/4 v3, 0x0

    goto :goto_0

    .line 80
    .end local v1    # "ioe":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveMapToFile(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Z
    .locals 9
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "objects"    # Ljava/util/Map;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    :try_start_0
    sget-object v5, Lc8/xLd;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Attempting to save: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v5, v6, v7}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v5, 0x0

    invoke-virtual {p2, p0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 51
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 52
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 54
    sget-object v5, Lc8/xLd;->TAG:Ljava/lang/String;

    const-string/jumbo v6, " + Successfully saved KV Pairs to: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    invoke-static {v5, v6, v7}, Lc8/yLd;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_0
    return v3

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v5, Lc8/xLd;->TAG:Ljava/lang/String;

    const-string/jumbo v6, " + Exception saving vars map: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v5, v6, v3}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 59
    goto :goto_0
.end method
