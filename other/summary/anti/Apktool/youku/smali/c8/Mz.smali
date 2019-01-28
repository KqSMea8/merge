.class public Lc8/Mz;
.super Lc8/Tz;
.source "AdditionalComponentIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Tz",
        "<",
        "Landroid/content/IntentFilter;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_ACTIVITY:I = 0x1

.field public static final TYPE_PROVIDER:I = 0x3

.field public static final TYPE_SERVICE:I = 0x2


# instance fields
.field protected final mComponents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 238
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    invoke-direct {p0}, Lc8/Tz;-><init>()V

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    .line 239
    iput p1, p0, Lc8/Mz;->type:I

    .line 240
    return-void
.end method


# virtual methods
.method public final addComponent(Ljava/lang/Object;)V
    .locals 8
    .param p1, "activityObj"    # Ljava/lang/Object;

    .prologue
    .line 267
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    const/4 v2, 0x0

    .line 269
    .local v2, "component":Landroid/content/ComponentName;
    :try_start_0
    sget-object v6, Lc8/xy;->PackageParser$Component_getComponentName:Lc8/Dy;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/ComponentName;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    if-eqz v2, :cond_0

    .line 275
    iget-object v6, p0, Lc8/Mz;->mComponents:Ljava/util/HashMap;

    invoke-virtual {v6, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    sget-object v6, Lc8/xy;->PackageParser$Component_intents:Lc8/Cy;

    invoke-virtual {v6, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 278
    .local v4, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 279
    .local v1, "NI":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 280
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    invoke-virtual {p0, v6}, Lc8/Mz;->addFilter(Landroid/content/IntentFilter;)V

    .line 279
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 270
    .end local v1    # "NI":I
    .end local v4    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .end local v5    # "j":I
    :catch_0
    move-exception v3

    .line 271
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 284
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v1    # "NI":I
    .restart local v4    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .restart local v5    # "j":I
    :cond_1
    return-void
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 244
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 249
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    new-array v0, p1, [Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected newResult(Landroid/content/IntentFilter;I)Landroid/content/pm/ResolveInfo;
    .locals 7
    .param p1, "info"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I

    .prologue
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 313
    :try_start_0
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 314
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    iget v5, p0, Lc8/Mz;->type:I

    if-ne v5, v6, :cond_3

    .line 315
    sget-object v5, Lc8/xy;->PackageParser$ActivityIntentInfo_activity:Lc8/Cy;

    invoke-virtual {v5, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "activity":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "info"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 317
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_0

    move-object v2, v4

    .line 347
    .end local v0    # "activity":Ljava/lang/Object;
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "res":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v2

    .line 320
    .restart local v0    # "activity":Ljava/lang/Object;
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "res":Landroid/content/pm/ResolveInfo;
    :cond_0
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 333
    .end local v0    # "activity":Ljava/lang/Object;
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_1
    iget v5, p0, Lc8/Mz;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    .line 334
    iput-object p1, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 336
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v5

    iput v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 337
    const/4 v5, 0x0

    iput v5, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 340
    iput p2, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 341
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 342
    const/4 v5, 0x0

    iput v5, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 343
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 344
    const/4 v5, 0x0

    iput v5, v2, Landroid/content/pm/ResolveInfo;->icon:I

    goto :goto_0

    .line 347
    .end local v2    # "res":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v5

    move-object v2, v4

    goto :goto_0

    .line 321
    .restart local v2    # "res":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v5, p0, Lc8/Mz;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 322
    sget-object v5, Lc8/xy;->PackageParser$ServiceIntentInfo_service:Lc8/Cy;

    invoke-virtual {v5, p1}, Lc8/Cy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 323
    .local v3, "service":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "info"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 324
    .local v1, "ai":Landroid/content/pm/ServiceInfo;
    if-nez v1, :cond_4

    move-object v2, v4

    .line 325
    goto :goto_0

    .line 327
    :cond_4
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 329
    .end local v1    # "ai":Landroid/content/pm/ServiceInfo;
    .end local v3    # "service":Ljava/lang/Object;
    :cond_5
    iget v5, p0, Lc8/Mz;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 330
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "not support provider query"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    invoke-virtual {p0, p1, p2}, Lc8/Mz;->newResult(Landroid/content/IntentFilter;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-super {p0, p1, p2, v0}, Lc8/Tz;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 255
    .local p0, "this":Lc8/Mz;, "Landroid/taobao/atlas/runtime/newcomponent/AdditionalComponentIntentResolver<TT;>;"
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    :goto_0
    iput v0, p0, Lc8/Mz;->mFlags:I

    .line 256
    invoke-super {p0, p1, p2, p3}, Lc8/Tz;->queryIntent(Landroid/content/Intent;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
