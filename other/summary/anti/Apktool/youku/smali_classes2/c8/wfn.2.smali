.class public Lc8/wfn;
.super Ljava/lang/Object;
.source "SDCardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vfn;
    }
.end annotation


# static fields
.field private static final DIR_SEPORATOR:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "SDCardManager"

.field static volatile invalidReporterSteup:Z


# instance fields
.field private nSDFreeSize:J

.field private nSDTotalSize:J

.field private sdPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    sput-boolean v0, Lc8/wfn;->invalidReporterSteup:Z

    .line 442
    const-string/jumbo v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lc8/wfn;->DIR_SEPORATOR:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdPath"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lc8/wfn;->init()V

    .line 56
    return-void
.end method

.method public static getDefauleSDCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
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
            "Lc8/vfn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    invoke-static {}, Lc8/wfn;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v6

    .line 273
    .local v6, "defauleSDCardPath":Ljava/lang/String;
    invoke-static {}, Lc8/LWc;->hasKitKat()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 274
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 275
    new-instance v12, Lc8/vfn;

    invoke-direct {v12}, Lc8/vfn;-><init>()V

    .line 276
    .local v12, "info":Lc8/vfn;
    iput-object v6, v12, Lc8/vfn;->path:Ljava/lang/String;

    .line 277
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/vfn;->isExternal:Z

    .line 278
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v12    # "info":Lc8/vfn;
    :cond_0
    sget-object v24, Lc8/ddn;->context:Landroid/content/Context;

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    .line 283
    .local v8, "externalFiles":[Ljava/io/File;
    if-eqz v8, :cond_1

    .line 284
    array-length v0, v8

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    const/16 v24, 0x1

    aget-object v24, v8, v24

    if-eqz v24, :cond_1

    .line 285
    new-instance v9, Lc8/vfn;

    invoke-direct {v9}, Lc8/vfn;-><init>()V

    .line 286
    .local v9, "externalInfo":Lc8/vfn;
    const/16 v24, 0x1

    aget-object v24, v8, v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lc8/vfn;->path:Ljava/lang/String;

    .line 287
    const/16 v24, 0x1

    move/from16 v0, v24

    iput-boolean v0, v9, Lc8/vfn;->isExternal:Z

    .line 288
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .end local v9    # "externalInfo":Lc8/vfn;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc8/vfn;

    .line 292
    .local v11, "ifo":Lc8/vfn;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "4.4SDCardInfo:path\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v11, Lc8/vfn;->path:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "       isExternal:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-boolean v0, v11, Lc8/vfn;->isExternal:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 296
    .end local v8    # "externalFiles":[Ljava/io/File;
    .end local v11    # "ifo":Lc8/vfn;
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v21

    .line 299
    .local v21, "runtime":Ljava/lang/Runtime;
    :try_start_0
    const-string/jumbo v24, "mount"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v20

    .line 301
    .local v20, "proc":Ljava/lang/Process;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 302
    .local v13, "is":Ljava/io/InputStream;
    new-instance v14, Ljava/io/InputStreamReader;

    invoke-direct {v14, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 305
    .local v14, "isr":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 308
    .local v4, "br":Ljava/io/BufferedReader;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v23, "tempPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    .local v15, "line":Ljava/lang/String;
    if-eqz v15, :cond_8

    .line 313
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

    .line 314
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 315
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

    .line 316
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "shell"

    .line 317
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "obb"

    .line 318
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "legacy"

    .line 319
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "data"

    .line 320
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string/jumbo v24, "tmpfs"

    .line 321
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 325
    const-string/jumbo v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_3

    .line 327
    aget-object v19, v5, v10

    .line 329
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

    .line 330
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    if-nez v24, :cond_5

    .line 332
    :try_start_1
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 326
    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 335
    :cond_6
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v18, Lc8/wfn;

    invoke-direct/range {v18 .. v19}, Lc8/wfn;-><init>(Ljava/lang/String;)V

    .line 337
    .local v18, "m":Lc8/wfn;
    invoke-virtual/range {v18 .. v18}, Lc8/wfn;->getTotalSize()J

    move-result-wide v24

    const-wide/32 v26, 0x20000000

    cmp-long v24, v24, v26

    if-ltz v24, :cond_5

    .line 338
    new-instance v12, Lc8/vfn;

    invoke-direct {v12}, Lc8/vfn;-><init>()V

    .line 339
    .restart local v12    # "info":Lc8/vfn;
    aget-object v24, v5, v10

    move-object/from16 v0, v24

    iput-object v0, v12, Lc8/vfn;->path:Ljava/lang/String;

    .line 340
    iget-object v0, v12, Lc8/vfn;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    const/16 v24, 0x1

    :goto_3
    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/vfn;->isExternal:Z

    .line 341
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .end local v12    # "info":Lc8/vfn;
    .end local v18    # "m":Lc8/wfn;
    :catch_0
    move-exception v24

    goto :goto_2

    .line 340
    .restart local v12    # "info":Lc8/vfn;
    .restart local v18    # "m":Lc8/wfn;
    :cond_7
    const/16 v24, 0x0

    goto :goto_3

    .line 351
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "info":Lc8/vfn;
    .end local v18    # "m":Lc8/wfn;
    .end local v19    # "path":Ljava/lang/String;
    :cond_8
    :try_start_2
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    .line 352
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 353
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lc8/vfn;

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/vfn;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 354
    new-instance v12, Lc8/vfn;

    invoke-direct {v12}, Lc8/vfn;-><init>()V

    .line 355
    .restart local v12    # "info":Lc8/vfn;
    iput-object v6, v12, Lc8/vfn;->path:Ljava/lang/String;

    .line 356
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/vfn;->isExternal:Z

    .line 357
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v12    # "info":Lc8/vfn;
    :cond_9
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_a

    .line 370
    new-instance v22, Ljava/util/TreeSet;

    new-instance v24, Lc8/ufn;

    invoke-direct/range {v24 .. v24}, Lc8/ufn;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 379
    .local v22, "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 380
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    .local v17, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    move-object/from16 v16, v17

    .line 382
    .end local v17    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    .end local v22    # "s":Ljava/util/Set;, "Ljava/util/Set<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    .restart local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/vfn;

    .line 383
    .restart local v12    # "info":Lc8/vfn;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "<Android4.4  SDCardInfo:path\uff1a"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v12, Lc8/vfn;->path:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "       isExternal:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-boolean v0, v12, Lc8/vfn;->isExternal:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 386
    .end local v4    # "br":Ljava/io/BufferedReader;
    .end local v12    # "info":Lc8/vfn;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v14    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "line":Ljava/lang/String;
    .end local v20    # "proc":Ljava/lang/Process;
    .end local v23    # "tempPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v7

    .line 387
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v24, "SDCardManager"

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 389
    const/16 v16, 0x0

    .end local v7    # "e":Ljava/io/IOException;
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    .end local v21    # "runtime":Ljava/lang/Runtime;
    :cond_b
    return-object v16

    .line 361
    .restart local v4    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "line":Ljava/lang/String;
    .restart local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/util/SDCardManager$SDCardInfo;>;"
    .restart local v20    # "proc":Ljava/lang/Process;
    .restart local v21    # "runtime":Ljava/lang/Runtime;
    .restart local v23    # "tempPath":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_c
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_9

    .line 362
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 363
    new-instance v12, Lc8/vfn;

    invoke-direct {v12}, Lc8/vfn;-><init>()V

    .line 364
    .restart local v12    # "info":Lc8/vfn;
    iput-object v6, v12, Lc8/vfn;->path:Ljava/lang/String;

    .line 365
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-boolean v0, v12, Lc8/vfn;->isExternal:Z

    .line 366
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 221
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lc8/wfn;->getFileSize(Ljava/io/File;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFileSize(Ljava/io/File;I)J
    .locals 8
    .param p0, "f"    # Ljava/io/File;
    .param p1, "deep"    # I

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 230
    invoke-static {p0}, Lc8/wfn;->reportInvalidFilePathIssue(Ljava/io/File;)V

    .line 231
    const-wide/16 v4, 0x0

    .line 249
    :cond_0
    :goto_0
    return-wide v4

    .line 234
    :cond_1
    const-wide/16 v4, 0x0

    .line 235
    .local v4, "size":J
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 239
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    aget-object v3, v0, v1

    add-int/lit8 v6, p1, -0x1

    invoke-static {v3, v6}, Lc8/wfn;->getFileSize(Ljava/io/File;I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 238
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    goto :goto_2

    .line 247
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_0
.end method

.method public static getStorageDirectories()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 457
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 459
    .local v9, "rv":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v10, "EXTERNAL_STORAGE"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "rawExternalStorage":Ljava/lang/String;
    const-string/jumbo v10, "SECONDARY_STORAGE"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "rawSecondaryStoragesStr":Ljava/lang/String;
    const-string/jumbo v10, "EMULATED_STORAGE_TARGET"

    invoke-static {v10}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 464
    .local v4, "rawEmulatedStorageTarget":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 466
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 468
    const-string/jumbo v10, "/storage/sdcard0"

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 498
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 500
    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, "rawSecondaryStorages":[Ljava/lang/String;
    invoke-static {v9, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 503
    .end local v6    # "rawSecondaryStorages":[Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10

    .line 470
    :cond_1
    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x11

    if-ge v10, v11, :cond_3

    .line 477
    const-string/jumbo v8, ""

    .line 491
    .local v8, "rawUserId":Ljava/lang/String;
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 492
    invoke-interface {v9, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 479
    .end local v8    # "rawUserId":Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 480
    .local v3, "path":Ljava/lang/String;
    sget-object v10, Lc8/wfn;->DIR_SEPORATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "folders":[Ljava/lang/String;
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-object v2, v0, v10

    .line 482
    .local v2, "lastFolder":Ljava/lang/String;
    const/4 v1, 0x0

    .line 484
    .local v1, "isDigit":Z
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    const/4 v1, 0x1

    .line 488
    :goto_2
    if-eqz v1, :cond_4

    move-object v8, v2

    .restart local v8    # "rawUserId":Ljava/lang/String;
    :goto_3
    goto :goto_1

    .end local v8    # "rawUserId":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, ""

    goto :goto_3

    .line 494
    .end local v0    # "folders":[Ljava/lang/String;
    .end local v1    # "isDigit":Z
    .end local v2    # "lastFolder":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .restart local v8    # "rawUserId":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v8    # "rawUserId":Ljava/lang/String;
    .restart local v0    # "folders":[Ljava/lang/String;
    .restart local v1    # "isDigit":Z
    .restart local v2    # "lastFolder":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private getYoukudiskSpace()J
    .locals 4

    .prologue
    .line 134
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/youku/youkudisk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lc8/wfn;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static hasSDCard()Z
    .locals 2

    .prologue
    .line 256
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
    .line 65
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    iget-object v5, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "statFs":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 67
    .local v6, "totalBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 68
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 69
    .local v2, "blockSize":J
    mul-long v8, v6, v2

    iput-wide v8, p0, Lc8/wfn;->nSDTotalSize:J

    .line 70
    mul-long v8, v0, v2

    iput-wide v8, p0, Lc8/wfn;->nSDFreeSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
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

.method static reportInvalidFilePathIssue(Ljava/io/File;)V
    .locals 8
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 194
    sget-boolean v1, Lc8/wfn;->invalidReporterSteup:Z

    if-nez v1, :cond_0

    .line 195
    sput-boolean v6, Lc8/wfn;->invalidReporterSteup:Z

    .line 196
    const-string/jumbo v1, "dpm"

    const-string/jumbo v2, "fileSystemError"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "vid"

    aput-object v5, v3, v4

    const-string/jumbo v4, "dir"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "data"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    invoke-static {v1, v2, v7, v3}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 203
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    const-string/jumbo v0, "NotExist"

    .line 210
    .local v0, "data":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "dpm"

    const-string/jumbo v2, "fileSystemError"

    .line 211
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    const-string/jumbo v4, "vid"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    const-string/jumbo v4, "dir"

    .line 212
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "nested"

    .line 213
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    const-string/jumbo v4, "data"

    .line 214
    invoke-virtual {v3, v4, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v3

    .line 210
    invoke-static {v1, v2, v3, v7}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0

    .line 208
    .end local v0    # "data":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v0, "Empty"

    .restart local v0    # "data":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v0    # "data":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, ","

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public exist()Z
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lc8/wfn;->nSDTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lc8/wfn;->nSDFreeSize:J

    return-wide v0
.end method

.method public getOtherProgrss()I
    .locals 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lc8/wfn;->exist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0}, Lc8/wfn;->getOtherSpace()J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lc8/wfn;->nSDTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getOtherSpace()J
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lc8/wfn;->exist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-wide/16 v0, 0x0

    .line 171
    :goto_0
    return-wide v0

    .line 170
    :cond_0
    iget-wide v0, p0, Lc8/wfn;->nSDTotalSize:J

    iget-wide v2, p0, Lc8/wfn;->nSDFreeSize:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lc8/wfn;->getYoukuOfflinedataSpace()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 171
    invoke-direct {p0}, Lc8/wfn;->getYoukudiskSpace()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lc8/wfn;->nSDTotalSize:J

    return-wide v0
.end method

.method public getUsedSpace()J
    .locals 8

    .prologue
    .line 145
    invoke-virtual {p0}, Lc8/wfn;->exist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-wide/16 v2, 0x0

    .line 159
    :goto_0
    return-wide v2

    .line 148
    :cond_0
    iget-wide v4, p0, Lc8/wfn;->nSDTotalSize:J

    iget-wide v6, p0, Lc8/wfn;->nSDFreeSize:J

    sub-long/2addr v4, v6

    invoke-direct {p0}, Lc8/wfn;->getYoukudiskSpace()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 150
    .local v2, "usedSpace":J
    :try_start_0
    iget-object v1, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    invoke-static {}, Lc8/wfn;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SDCardManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getYoukuOfflinedataSpace()J
    .locals 4

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/youku/offlinedata/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lc8/wfn;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getYoukuProgrss()I
    .locals 4

    .prologue
    .line 178
    invoke-virtual {p0}, Lc8/wfn;->exist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0}, Lc8/wfn;->getYoukuVideoSpace()J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lc8/wfn;->nSDTotalSize:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getYoukuVideoSpace()J
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lc8/wfn;->sdPath:Ljava/lang/String;

    invoke-static {}, Lc8/wfn;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lc8/wfn;->getYoukuOfflinedataSpace()J

    move-result-wide v0

    .line 124
    :goto_0
    return-wide v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lc8/wfn;->getYoukuOfflinedataSpace()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lc8/wfn;->getYoukuOfflinedataSpace()J

    move-result-wide v0

    goto :goto_0
.end method
