.class public Lc8/Oy;
.super Ljava/lang/Object;
.source "ActivityTaskMgr.java"


# static fields
.field private static sInstance:Lc8/Oy;

.field public static sReminderDialog:Landroid/app/Dialog;


# instance fields
.field private activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    sput-object v0, Lc8/Oy;->sInstance:Lc8/Oy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Oy;->activityList:Ljava/util/List;

    .line 234
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

.method public static declared-synchronized getInstance()Lc8/Oy;
    .locals 2

    .prologue
    .line 242
    const-class v1, Lc8/Oy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Oy;->sInstance:Lc8/Oy;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lc8/Oy;

    invoke-direct {v0}, Lc8/Oy;-><init>()V

    sput-object v0, Lc8/Oy;->sInstance:Lc8/Oy;

    .line 245
    :cond_0
    sget-object v0, Lc8/Oy;->sInstance:Lc8/Oy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearActivityStack()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    :try_start_0
    iget-object v1, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 287
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 294
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :catch_0
    move-exception v1

    iput-object v3, p0, Lc8/Oy;->activityList:Ljava/util/List;

    .line 295
    :goto_1
    return-void

    .line 294
    :cond_1
    iput-object v3, p0, Lc8/Oy;->activityList:Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lc8/Oy;->activityList:Ljava/util/List;

    throw v1
.end method

.method public getActivityList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lc8/Oy;->activityList:Ljava/util/List;

    return-object v0
.end method

.method public isActivityStackEmpty()Z
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public peekTopActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lc8/Oy;->activityList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 254
    iget-object v1, p0, Lc8/Oy;->activityList:Ljava/util/List;

    iget-object v2, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 255
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 259
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popFromActivityStack(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 267
    sget-object v2, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    sget-object v2, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    .line 268
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eq v2, p1, :cond_0

    sget-object v2, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    .line 269
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    sget-object v2, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 271
    :cond_0
    :try_start_0
    sget-object v2, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    sput-object v3, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    .line 276
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget-object v2, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 277
    iget-object v2, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 278
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 279
    iget-object v2, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v1    # "x":I
    :catch_0
    move-exception v2

    sput-object v3, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    goto :goto_0

    :catchall_0
    move-exception v2

    sput-object v3, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    throw v2

    .line 282
    .restart local v1    # "x":I
    :cond_3
    return-void
.end method

.method public pushToActivityStack(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 263
    iget-object v0, p0, Lc8/Oy;->activityList:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method public sizeOfActivityStack()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public updateBundleActivityResource(Ljava/lang/String;)V
    .locals 17
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v14, 0x0

    .local v14, "x":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/Oy;->activityList:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ref/WeakReference;

    .line 309
    .local v9, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Activity;

    invoke-virtual {v15}, Landroid/app/Activity;->isFinishing()Z

    move-result v15

    if-nez v15, :cond_2

    .line 310
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 312
    .local v2, "activity":Landroid/app/Activity;
    :try_start_0
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x11

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    sget-object v16, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 313
    const-class v15, Landroid/app/Activity;

    invoke-virtual {v15}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v15

    const-string/jumbo v16, "mResources"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 314
    .local v4, "mResourcesField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 315
    sget-object v15, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-static {v4, v2, v15}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 317
    .end local v4    # "mResourcesField":Ljava/lang/reflect/Field;
    :cond_0
    const-class v15, Landroid/app/Activity;

    invoke-virtual {v15}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v15

    const-string/jumbo v16, "mTheme"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 318
    .local v6, "mThemeField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 319
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 320
    .local v5, "mTheme":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string/jumbo v16, "this$0"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 321
    .local v3, "mReferenceResource":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 322
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 323
    const/4 v15, 0x0

    invoke-static {v6, v2, v15}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    :cond_1
    const-string/jumbo v15, "android.support.v7.widget.TintContextWrapper"

    invoke-static {v15}, Lc8/Oy;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 327
    .local v1, "TintContextWrapper":Ljava/lang/Class;
    const-string/jumbo v15, "sCache"

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 328
    .local v11, "tintWrapperField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 329
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 331
    .local v10, "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    if-eqz v10, :cond_2

    .line 332
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_2

    .line 333
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/WeakReference;

    .line 334
    .local v12, "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    .line 335
    .local v13, "wrapper":Ljava/lang/Object;
    :goto_2
    if-eqz v13, :cond_4

    move-object v0, v13

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v15

    if-ne v15, v2, :cond_4

    .line 336
    const-string/jumbo v15, "mResources"

    invoke-virtual {v1, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 337
    .local v7, "mTintResourcesField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 338
    sget-object v15, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-static {v7, v13, v15}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "TintContextWrapper":Ljava/lang/Class;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "mReferenceResource":Ljava/lang/reflect/Field;
    .end local v5    # "mTheme":Ljava/lang/Object;
    .end local v6    # "mThemeField":Ljava/lang/reflect/Field;
    .end local v7    # "mTintResourcesField":Ljava/lang/reflect/Field;
    .end local v8    # "n":I
    .end local v10    # "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v11    # "tintWrapperField":Ljava/lang/reflect/Field;
    .end local v12    # "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v13    # "wrapper":Ljava/lang/Object;
    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 334
    .restart local v1    # "TintContextWrapper":Ljava/lang/Class;
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "mReferenceResource":Ljava/lang/reflect/Field;
    .restart local v5    # "mTheme":Ljava/lang/Object;
    .restart local v6    # "mThemeField":Ljava/lang/reflect/Field;
    .restart local v8    # "n":I
    .restart local v10    # "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .restart local v11    # "tintWrapperField":Ljava/lang/reflect/Field;
    .restart local v12    # "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    .line 332
    .restart local v13    # "wrapper":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 349
    .end local v1    # "TintContextWrapper":Ljava/lang/Class;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "mReferenceResource":Ljava/lang/reflect/Field;
    .end local v5    # "mTheme":Ljava/lang/Object;
    .end local v6    # "mThemeField":Ljava/lang/reflect/Field;
    .end local v8    # "n":I
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    .end local v10    # "sCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v11    # "tintWrapperField":Ljava/lang/reflect/Field;
    .end local v12    # "wrappRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v13    # "wrapper":Ljava/lang/Object;
    :cond_5
    return-void

    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :catch_0
    move-exception v15

    goto :goto_3
.end method
