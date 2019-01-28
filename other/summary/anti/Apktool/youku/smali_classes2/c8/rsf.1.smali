.class public Lc8/rsf;
.super Ljava/lang/Object;
.source "ProblemCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qsf;
    }
.end annotation


# instance fields
.field mArrayMapReceivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field mFileSpFile:Ljava/lang/reflect/Field;

.field mIsUploadBroadCastProblem:Z

.field mMySharedPreferenceChangeListener:Lc8/qsf;

.field mOnLineMonitor:Lc8/msf;

.field mPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mSharedpreferenceKeyFreq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSharedpreferenceQueuedWork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/msf;)V
    .locals 1
    .param p1, "onLineMonitor"    # Lc8/msf;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lc8/qsf;

    invoke-direct {v0, p0}, Lc8/qsf;-><init>(Lc8/rsf;)V

    iput-object v0, p0, Lc8/rsf;->mMySharedPreferenceChangeListener:Lc8/qsf;

    .line 35
    iput-object p1, p0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    .line 36
    invoke-static {}, Lc8/msf;->createArrayMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/rsf;->mSharedpreferenceKeyFreq:Ljava/util/Map;

    .line 37
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lc8/msf;->createArrayMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/rsf;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    .line 40
    :cond_0
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
.method checkBroadCastCount(Landroid/app/Application;Z)I
    .locals 35
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "calBroadCastClass"    # Z

    .prologue
    .line 184
    const/16 v31, 0x0

    .line 187
    .local v31, "receiveCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mArrayMapReceivers:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 188
    const-string/jumbo v3, "android.app.LoadedApk"

    invoke-static {v3}, Lc8/rsf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 189
    .local v12, "clazzLoadedApk":Ljava/lang/Class;
    const-string/jumbo v3, "mReceivers"

    invoke-virtual {v12, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v22

    .line 190
    .local v22, "fieldReceivers":Ljava/lang/reflect/Field;
    const-class v3, Landroid/app/Application;

    const-string/jumbo v4, "mLoadedApk"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    .line 191
    .local v21, "fieldLoadedApk":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 192
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 194
    .local v30, "objLoadedApk":Ljava/lang/Object;
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/rsf;->mArrayMapReceivers:Ljava/util/Map;

    .line 196
    .end local v12    # "clazzLoadedApk":Ljava/lang/Class;
    .end local v21    # "fieldLoadedApk":Ljava/lang/reflect/Field;
    .end local v22    # "fieldReceivers":Ljava/lang/reflect/Field;
    .end local v30    # "objLoadedApk":Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mArrayMapReceivers:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 197
    const/16 v28, 0x0

    .line 199
    .local v28, "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mArrayMapReceivers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    .line 200
    .local v19, "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    if-eqz v19, :cond_7

    .line 201
    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    move-object/from16 v29, v28

    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v29, "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    :try_start_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 202
    .local v18, "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Map;

    .line 203
    .local v27, "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    if-eqz v27, :cond_4

    .line 204
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v3

    add-int v31, v31, v3

    .line 205
    if-eqz p2, :cond_4

    .line 206
    if-nez v29, :cond_10

    .line 207
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 210
    .end local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    :try_start_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v17

    .line 211
    .local v17, "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    if-eqz v17, :cond_5

    .line 212
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 213
    .local v15, "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 215
    .local v10, "broadcastReceiver":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v32

    .line 217
    .local v32, "receiveName":Ljava/lang/String;
    if-eqz v32, :cond_1

    .line 218
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 219
    .local v26, "integer":Ljava/lang/Integer;
    if-eqz v26, :cond_3

    .line 220
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v13, v3, 0x1

    .line 221
    .local v13, "count":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 299
    .end local v10    # "broadcastReceiver":Ljava/lang/Object;
    .end local v13    # "count":I
    .end local v15    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v17    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v18    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v19    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "integer":Ljava/lang/Integer;
    .end local v27    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v32    # "receiveName":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 300
    .local v14, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 308
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    :goto_4
    return v31

    .line 223
    .restart local v10    # "broadcastReceiver":Ljava/lang/Object;
    .restart local v15    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .restart local v17    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v18    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v19    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .restart local v25    # "i$":Ljava/util/Iterator;
    .restart local v26    # "integer":Ljava/lang/Integer;
    .restart local v27    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .restart local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v32    # "receiveName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v10    # "broadcastReceiver":Ljava/lang/Object;
    .end local v15    # "entryBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v17    # "entrySetBroadCast":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v18    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v19    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "integer":Ljava/lang/Integer;
    .end local v27    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .end local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v32    # "receiveName":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_4

    .restart local v18    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v19    # "entrySetBroadcastReceivers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;>;"
    .restart local v27    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .restart local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    move-object/from16 v28, v29

    .end local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    move-object/from16 v29, v28

    .line 232
    .end local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_0

    .end local v18    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .end local v27    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    :cond_6
    move-object/from16 v28, v29

    .line 237
    .end local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    if-eqz p2, :cond_2

    if-eqz v28, :cond_2

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 239
    const/4 v11, 0x0

    .line 240
    .local v11, "checkedCount":I
    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    .line 241
    .local v20, "entrySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 242
    .local v16, "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 243
    .local v6, "key":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 244
    .local v34, "valInt":Ljava/lang/Integer;
    if-eqz v34, :cond_8

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_8

    .line 245
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v11, v3

    .line 246
    const-string/jumbo v3, "OnLineMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 249
    .local v33, "size":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/psf;

    .line 251
    .local v2, "onlineStatistics":Lc8/psf;
    if-eqz v2, :cond_9

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v4, 0x5

    const-string/jumbo v5, "BroadCast"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface/range {v2 .. v9}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 259
    .end local v2    # "onlineStatistics":Lc8/psf;
    .end local v6    # "key":Ljava/lang/String;
    .end local v16    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v23    # "i":I
    .end local v33    # "size":I
    .end local v34    # "valInt":Ljava/lang/Integer;
    :cond_a
    div-int/lit8 v3, v31, 0x2

    if-ge v11, v3, :cond_d

    .line 260
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 261
    .restart local v16    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 262
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 263
    .restart local v34    # "valInt":Ljava/lang/Integer;
    if-eqz v34, :cond_b

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_b

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_b

    .line 264
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v11, v3

    .line 266
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 267
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 268
    .restart local v33    # "size":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/psf;

    .line 270
    .restart local v2    # "onlineStatistics":Lc8/psf;
    if-eqz v2, :cond_c

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v4, 0x5

    const-string/jumbo v5, "BroadCast"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface/range {v2 .. v9}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 279
    .end local v2    # "onlineStatistics":Lc8/psf;
    .end local v6    # "key":Ljava/lang/String;
    .end local v16    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v23    # "i":I
    .end local v33    # "size":I
    .end local v34    # "valInt":Ljava/lang/Integer;
    :cond_d
    div-int/lit8 v3, v31, 0x2

    if-ge v11, v3, :cond_2

    .line 280
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_e
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 281
    .restart local v16    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 282
    .restart local v6    # "key":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 283
    .restart local v34    # "valInt":Ljava/lang/Integer;
    if-eqz v34, :cond_e

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_e

    .line 285
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    .line 286
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 287
    .restart local v33    # "size":I
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_7
    move/from16 v0, v23

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/psf;

    .line 289
    .restart local v2    # "onlineStatistics":Lc8/psf;
    if-eqz v2, :cond_f

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v4, 0x5

    const-string/jumbo v5, "BroadCast"

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface/range {v2 .. v9}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 287
    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 299
    .end local v2    # "onlineStatistics":Lc8/psf;
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "checkedCount":I
    .end local v16    # "entrySet":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v20    # "entrySets":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v23    # "i":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v33    # "size":I
    .end local v34    # "valInt":Ljava/lang/Integer;
    .restart local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_2
    move-exception v14

    move-object/from16 v28, v29

    .end local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_3

    .end local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "entrySetBroadcastReceiver":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/Context;Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;>;"
    .restart local v27    # "mapReceivers":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/BroadcastReceiver;Ljava/lang/Object;>;"
    .restart local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_10
    move-object/from16 v28, v29

    .end local v29    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "mapReceiversCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_1
.end method

.method checkQueuedWork()V
    .locals 22

    .prologue
    .line 85
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_1

    .line 86
    const-string/jumbo v3, "android.app.QueuedWork"

    invoke-static {v3}, Lc8/rsf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 87
    .local v13, "clazz":Ljava/lang/Class;
    const-string/jumbo v3, "sPendingWorkFinishers"

    invoke-virtual {v13, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 88
    .local v15, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 89
    invoke-virtual {v15, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    iput-object v3, v0, Lc8/rsf;->mPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 146
    .end local v13    # "clazz":Ljava/lang/Class;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v21

    .line 93
    .local v21, "workSize":I
    if-lez v21, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray()[Ljava/lang/Object;

    move-result-object v12

    .line 95
    .local v12, "ary":[Ljava/lang/Object;
    if-eqz v12, :cond_0

    .line 96
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    array-length v3, v12

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 97
    aget-object v3, v12, v17

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "this$1"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 98
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    aget-object v3, v12, v17

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 100
    .local v11, "SharedImplEdit":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "this$0"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-virtual {v15, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 104
    .local v10, "SharedImpl":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    if-nez v3, :cond_2

    .line 105
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "mFile"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 106
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    move-object/from16 v0, p0

    iput-object v15, v0, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    .line 109
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/File;

    .line 110
    .local v16, "file":Ljava/io/File;
    if-eqz v16, :cond_6

    .line 111
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "fileKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 115
    .local v18, "integer":Ljava/lang/Integer;
    if-eqz v18, :cond_5

    .line 116
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v14, v3, 0x1

    .line 117
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .end local v14    # "count":I
    .end local v18    # "integer":Ljava/lang/Integer;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 124
    .local v20, "size":I
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    .line 125
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/psf;

    .line 126
    .local v2, "onlineStatistics":Lc8/psf;
    if-eqz v2, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v4, 0x4

    const-string/jumbo v5, "SP-QueuedWork"

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/rsf;->mOnLineMonitor:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mActivityName:Ljava/lang/String;

    const-string/jumbo v8, ""

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lc8/psf;->onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 119
    .end local v2    # "onlineStatistics":Lc8/psf;
    .end local v19    # "j":I
    .end local v20    # "size":I
    .restart local v18    # "integer":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/rsf;->mSharedpreferenceQueuedWork:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v7    # "fileKey":Ljava/lang/String;
    .end local v10    # "SharedImpl":Ljava/lang/Object;
    .end local v11    # "SharedImplEdit":Ljava/lang/Object;
    .end local v12    # "ary":[Ljava/lang/Object;
    .end local v15    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "file":Ljava/io/File;
    .end local v17    # "i":I
    .end local v18    # "integer":Ljava/lang/Integer;
    .end local v21    # "workSize":I
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 134
    .restart local v10    # "SharedImpl":Ljava/lang/Object;
    .restart local v11    # "SharedImplEdit":Ljava/lang/Object;
    .restart local v12    # "ary":[Ljava/lang/Object;
    .restart local v15    # "field":Ljava/lang/reflect/Field;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v17    # "i":I
    .restart local v21    # "workSize":I
    :cond_6
    sget-boolean v3, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v3, :cond_7

    .line 135
    const-string/jumbo v3, "OnLineMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u68c0\u6d4b\u5230SharedPreferences\u4fee\u6539\u5bfc\u81f4\u7684\u963b\u585e\uff0cSharedPreferences File\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/rsf;->mFileSpFile:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1
.end method

.method regSharedPreferenceListener(Ljava/lang/Thread;)V
    .locals 6
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "this$0"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 49
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "SharedImpl":Ljava/lang/Object;
    instance-of v4, v1, Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 52
    move-object v0, v1

    check-cast v0, Landroid/content/SharedPreferences;

    move-object v3, v0

    .line 53
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lc8/rsf;->mMySharedPreferenceChangeListener:Lc8/qsf;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "SharedImpl":Ljava/lang/Object;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method
