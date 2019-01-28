.class public Lc8/Xyo;
.super Ljava/lang/Object;
.source "SDCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wyo;
    }
.end annotation


# static fields
.field private static final DIR_SEPORATOR:Ljava/util/regex/Pattern;


# instance fields
.field private nSDFreeSize:J

.field private nSDTotalSize:J

.field private sdPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    const-string/jumbo v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/Xyo;->DIR_SEPORATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdPath"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/Xyo;->sdPath:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lc8/Xyo;->init()V

    .line 52
    return-void
.end method

.method public static getDefauleSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalStorageDirectory()Ljava/util/ArrayList;
    .locals 28
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Wyo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    invoke-static {}, Lc8/Xyo;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "defauleSDCardPath":Ljava/lang/String;
    invoke-static {}, Lc8/LWc;->hasKitKat()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 225
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 226
    new-instance v12, Lc8/Wyo;

    invoke-direct {v12}, Lc8/Wyo;-><init>()V

    .line 227
    .local v12, "info":Lc8/Wyo;
    iput-object v6, v12, Lc8/Wyo;->path:Ljava/lang/String;

    .line 228
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/Wyo;->isExternal:Z

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v12    # "info":Lc8/Wyo;
    :cond_0
    sget-object v24, Lc8/ddn;->context:Landroid/content/Context;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    .line 234
    .local v8, "externalFiles":[Ljava/io/File;
    if-eqz v8, :cond_1

    .line 235
    array-length v0, v8

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    const/16 v24, 0x1

    aget-object v24, v8, v24

    if-eqz v24, :cond_1

    .line 236
    new-instance v9, Lc8/Wyo;

    invoke-direct {v9}, Lc8/Wyo;-><init>()V

    .line 237
    .local v9, "externalInfo":Lc8/Wyo;
    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lc8/Wyo;->path:Ljava/lang/String;

    .line 238
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v9, Lc8/Wyo;->isExternal:Z

    .line 239
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v9    # "externalInfo":Lc8/Wyo;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/Wyo;

    .line 243
    .local v11, "ifo":Lc8/Wyo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "4.4SDCardInfo:path\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v11, Lc8/Wyo;->path:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "       isExternal:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-boolean v0, v11, Lc8/Wyo;->isExternal:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 247
    .end local v8    # "externalFiles":[Ljava/io/File;
    .end local v11    # "ifo":Lc8/Wyo;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    .line 250
    .local v21, "runtime":Ljava/lang/Runtime;
    :try_start_0
    const-string/jumbo v24, "mount"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v20

    .line 252
    .local v20, "proc":Ljava/lang/Process;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 253
    .local v13, "is":Ljava/io/InputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 256
    .local v14, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 259
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v23, "tempPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 264
    const-string/jumbo v24, "fat"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string/jumbo v24, "fuse"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string/jumbo v24, "storage"

    .line 265
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 266
    :cond_4
    const-string/jumbo v24, "secure"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "asec"

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "firmware"

    .line 267
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "shell"

    .line 268
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "obb"

    .line 269
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "legacy"

    .line 270
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "data"

    .line 271
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "tmpfs"

    .line 272
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 276
    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_3

    .line 278
    aget-object v19, v5, v10

    .line 280
    .local v19, "path":Ljava/lang/String;
    const-string/jumbo v24, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_5

    const-string/jumbo v24, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string/jumbo v24, "Data"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string/jumbo v24, "/dev/fuse"

    .line 281
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    if-nez v24, :cond_5

    .line 283
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 277
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 286
    :cond_6
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v18, Lc8/Xyo;

    invoke-direct/range {v18 .. v19}, Lc8/Xyo;-><init>(Ljava/lang/String;)V

    .line 288
    .local v18, "m":Lc8/Xyo;
    invoke-virtual/range {v18 .. v18}, Lc8/Xyo;->getTotalSize()J

    move-result-wide v24

    const-wide/32 v26, 0x20000000

    cmp-long v24, v24, v26

    if-ltz v24, :cond_5

    .line 289
    new-instance v12, Lc8/Wyo;

    invoke-direct {v12}, Lc8/Wyo;-><init>()V

    .line 290
    .restart local v12    # "info":Lc8/Wyo;
    aget-object v24, v5, v10

    move-object/from16 v0, v24

    iput-object v0, v12, Lc8/Wyo;->path:Ljava/lang/String;

    .line 291
    iget-object v0, v12, Lc8/Wyo;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/Wyo;->isExternal:Z

    .line 292
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v12    # "info":Lc8/Wyo;
    .end local v18    # "m":Lc8/Xyo;
    :catch_0
    move-exception v24

    goto :goto_2

    .line 291
    .restart local v12    # "info":Lc8/Wyo;
    .restart local v18    # "m":Lc8/Xyo;
    :cond_7
    const/16 v24, 0x0

    goto :goto_3

    .line 302
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "info":Lc8/Wyo;
    .end local v18    # "m":Lc8/Xyo;
    .end local v19    # "path":Ljava/lang/String;
    :cond_8
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 303
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 304
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lc8/Wyo;

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/Wyo;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 305
    new-instance v12, Lc8/Wyo;

    invoke-direct {v12}, Lc8/Wyo;-><init>()V

    .line 306
    .restart local v12    # "info":Lc8/Wyo;
    iput-object v6, v12, Lc8/Wyo;->path:Ljava/lang/String;

    .line 307
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/Wyo;->isExternal:Z

    .line 308
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v12    # "info":Lc8/Wyo;
    :cond_9
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 321
    new-instance v22, Ljava/util/TreeSet;

    new-instance v24, Lc8/Vyo;

    invoke-direct/range {v24 .. v24}, Lc8/Vyo;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 330
    .local v22, "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 331
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    move-object/from16 v16, v17

    .line 333
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    .end local v22    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    .restart local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/Wyo;

    .line 334
    .restart local v12    # "info":Lc8/Wyo;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "<Android4.4  SDCardInfo:path\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v12, Lc8/Wyo;->path:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "       isExternal:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-boolean v0, v12, Lc8/Wyo;->isExternal:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 337
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v12    # "info":Lc8/Wyo;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "proc":Ljava/lang/Process;
    .end local v23    # "tempPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v7

    .line 338
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v24, "SDCardManager"

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    const/16 v16, 0x0

    .end local v7    # "e":Ljava/io/IOException;
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    .end local v21    # "runtime":Ljava/lang/Runtime;
    :cond_b
    return-object v16

    .line 312
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/util/SDCardUtil$SDCardInfo;>;"
    .restart local v20    # "proc":Ljava/lang/Process;
    .restart local v21    # "runtime":Ljava/lang/Runtime;
    .restart local v23    # "tempPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_9

    .line 313
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 314
    new-instance v12, Lc8/Wyo;

    invoke-direct {v12}, Lc8/Wyo;-><init>()V

    .line 315
    .restart local v12    # "info":Lc8/Wyo;
    iput-object v6, v12, Lc8/Wyo;->path:Ljava/lang/String;

    .line 316
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/Wyo;->isExternal:Z

    .line 317
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 207
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init()V
    .locals 10

    .prologue
    .line 57
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lc8/Xyo;->sdPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 59
    .local v6, "totalBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 60
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 61
    .local v2, "blockSize":J
    mul-long v8, v6, v2

    iput-wide v8, p0, Lc8/Xyo;->nSDTotalSize:J

    .line 62
    mul-long v8, v0, v2

    iput-wide v8, p0, Lc8/Xyo;->nSDFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "statFs":Landroid/os/StatFs;
    .end local v6    # "totalBlocks":J
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public getTotalSize()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lc8/Xyo;->nSDTotalSize:J

    return-wide v0
.end method
