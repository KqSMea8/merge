.class public Landroid/taobao/atlas/runtime/RuntimeVariables;
.super Ljava/lang/Object;
.source "RuntimeVariables.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static FrameworkPropertiesClazz:Ljava/lang/Class;

.field public static androidApplication:Landroid/app/Application;

.field public static delegateClassLoader:Lc8/Yy;

.field public static delegateResources:Landroid/content/res/Resources;

.field public static originalResources:Landroid/content/res/Resources;

.field public static sApkPath:Ljava/lang/String;

.field public static sAppLastUpdateTime:J

.field public static sBundleVerifier:Lc8/by;

.field public static sCachePreVersionBundles:Z

.field public static sCurrentProcessName:Ljava/lang/String;

.field public static sDexLoadBooster:Ljava/lang/Object;

.field public static sInstalledVersionCode:J

.field public static sInstalledVersionName:Ljava/lang/String;

.field public static sRawClassLoader:Ljava/lang/ClassLoader;

.field public static sRealApplicationName:Ljava/lang/String;

.field public static sReminder:Lc8/cy;

.field public static safeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    sput-boolean v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->safeMode:Z

    .line 252
    sput-boolean v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCachePreVersionBundles:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertDialogUntilBundleProcessed(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 261
    if-eqz p0, :cond_1

    .line 262
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->sReminder:Lc8/cy;

    if-eqz v5, :cond_0

    .line 263
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->sReminder:Lc8/cy;

    invoke-interface {v5, p0, p1}, Lc8/cy;->createReminderDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    .line 276
    :goto_0
    return-object v1

    .line 265
    :cond_0
    new-instance v1, Landroid/app/Dialog;

    sget v5, Landroid/taobao/atlas/R$style;->atlas_default_dialog:I

    invoke-direct {v1, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 266
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 267
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 268
    new-instance v3, Lc8/Gz;

    invoke-direct {v3, p0}, Lc8/Gz;-><init>(Landroid/content/Context;)V

    .line 269
    .local v3, "progress":Lc8/Gz;
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 270
    .local v0, "density":F
    const/high16 v5, 0x42c00000    # 96.0f

    mul-float/2addr v5, v0

    float-to-int v4, v5

    .line 271
    .local v4, "size":I
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 272
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v3, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 276
    .end local v0    # "density":F
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "progress":Lc8/Gz;
    .end local v4    # "size":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFrameworkProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->FrameworkPropertiesClazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 291
    const-class v1, Landroid/taobao/atlas/framework/FrameworkProperties;

    sput-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->FrameworkPropertiesClazz:Ljava/lang/Class;

    .line 294
    :cond_0
    :try_start_0
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->FrameworkPropertiesClazz:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 295
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 296
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->FrameworkPropertiesClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 298
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static getRawClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sRawClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sRawClassLoader:Ljava/lang/ClassLoader;

    .line 322
    :goto_0
    return-object v0

    :cond_0
    const-class v0, Landroid/taobao/atlas/runtime/RuntimeVariables;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public static shouldSyncUpdateInThisProcess()Z
    .locals 3

    .prologue
    .line 307
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sCurrentProcessName:Ljava/lang/String;

    .line 308
    .local v0, "processName":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 309
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ":safemode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    :cond_0
    const/4 v1, 0x1

    .line 314
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static verifyBundle(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bundlePath"    # Ljava/lang/String;

    .prologue
    .line 280
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sBundleVerifier:Lc8/by;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->sBundleVerifier:Lc8/by;

    invoke-interface {v0, p0}, Lc8/by;->verifyBundle(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
