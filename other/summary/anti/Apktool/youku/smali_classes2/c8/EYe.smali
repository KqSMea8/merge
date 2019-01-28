.class public Lc8/EYe;
.super Ljava/lang/Object;
.source "ActivityGroupDelegate.java"


# static fields
.field private static final STATES_KEY:Ljava/lang/String; = "android:states"


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mLocalActivityManager:Lc8/GYe;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lc8/EYe;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 45
    :try_start_0
    new-instance v1, Lc8/GYe;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lc8/GYe;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    iget-object v1, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/GYe;->dispatchCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-instance v2, Lc8/AYe;

    invoke-direct {v2, p0}, Lc8/AYe;-><init>(Lc8/EYe;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 99
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lc8/EYe;)Landroid/support/v4/app/FragmentActivity;
    .locals 1
    .param p0, "x0"    # Lc8/EYe;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/EYe;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method static synthetic access$100(Lc8/EYe;)Lc8/GYe;
    .locals 1
    .param p0, "x0"    # Lc8/EYe;

    .prologue
    .line 30
    iget-object v0, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    return-object v0
.end method

.method static synthetic access$200(Lc8/EYe;Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lc8/EYe;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lc8/EYe;->performLaunchChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method private asyncStartActivity(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 10
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "bundleName"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    .line 215
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v2

    .line 216
    .local v2, "current":Landroid/app/Activity;
    if-eqz v2, :cond_0

    invoke-static {v2, p3}, Landroid/taobao/atlas/runtime/RuntimeVariables;->alertDialogUntilBundleProcessed(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v7

    .line 217
    .local v7, "dialog":Landroid/app/Dialog;
    :goto_0
    if-eqz v2, :cond_1

    if-nez v7, :cond_1

    .line 218
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "alertDialogUntilBundleProcessed can not return null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    .end local v7    # "dialog":Landroid/app/Dialog;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 220
    .restart local v7    # "dialog":Landroid/app/Dialog;
    :cond_1
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Oy;->sizeOfActivityStack()I

    move-result v3

    .line 221
    .local v3, "currentActivitySize":I
    new-instance v9, Lc8/Uy;

    new-instance v0, Lc8/BYe;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lc8/BYe;-><init>(Lc8/EYe;Landroid/app/Activity;ILandroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;Landroid/app/Dialog;)V

    invoke-direct {v9, v0}, Lc8/Uy;-><init>(Ljava/lang/Runnable;)V

    .line 236
    .local v9, "successTask":Lc8/Uy;
    new-instance v8, Lc8/Uy;

    new-instance v0, Lc8/CYe;

    invoke-direct {v0, p0, v2, v7}, Lc8/CYe;-><init>(Lc8/EYe;Landroid/app/Activity;Landroid/app/Dialog;)V

    invoke-direct {v8, v0}, Lc8/Uy;-><init>(Ljava/lang/Runnable;)V

    .line 252
    .local v8, "failedTask":Lc8/Uy;
    if-eqz v7, :cond_4

    .line 253
    new-instance v0, Lc8/DYe;

    invoke-direct {v0, p0, v9, v8}, Lc8/DYe;-><init>(Lc8/EYe;Lc8/Uy;Lc8/Uy;)V

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 260
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v0

    invoke-virtual {v0, p3}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_3

    .line 261
    :cond_2
    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 263
    :try_start_0
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_3
    :goto_1
    invoke-static {p3, v9, v8}, Lc8/Vy;->checkBundleStateAsync(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 270
    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private performLaunchChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 154
    if-nez p3, :cond_0

    .line 155
    const-string/jumbo v0, "ActivityGroupDelegate"

    const-string/jumbo v1, "intent is null stop performLaunchChildActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    invoke-virtual {v0, p2, p3}, Lc8/GYe;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    .line 159
    iget-object v0, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    invoke-virtual {v0, p2}, Lc8/GYe;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public execStartChildActivityInternal(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 12
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    const/4 v6, 0x0

    .line 168
    .local v6, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 169
    .local v2, "componentName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 170
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 180
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 181
    const-string/jumbo v8, "ActivityGroupDelegate"

    const-string/jumbo v9, "can not find componentName"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lc8/aB;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 184
    const-string/jumbo v8, "ActivityGroupDelegate"

    const-string/jumbo v9, "childActivity can not be external Activity"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v8

    invoke-virtual {v8, v2}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 189
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v8

    invoke-virtual {v8, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v5

    check-cast v5, Lc8/hy;

    .line 190
    .local v5, "impl":Lc8/hy;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lc8/hy;->checkValidate()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lc8/EYe;->performLaunchChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V

    .line 212
    .end local v5    # "impl":Lc8/hy;
    :cond_3
    :goto_1
    return-void

    .line 174
    .end local v0    # "bundleName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p3, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 175
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    .line 176
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 177
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 193
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "bundleName":Ljava/lang/String;
    .restart local v5    # "impl":Lc8/hy;
    :cond_5
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v8

    invoke-virtual {v8}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 194
    invoke-direct {p0, p1, p2, v0, p3}, Lc8/EYe;->asyncStartActivity(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 196
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lc8/EYe;->performLaunchChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 203
    .end local v5    # "impl":Lc8/hy;
    :cond_7
    :try_start_0
    invoke-static {}, Lc8/py;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 204
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_3

    .line 205
    invoke-direct {p0, p1, p2, p3}, Lc8/EYe;->performLaunchChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v8, "ActivityGroupDelegate"

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getLocalActivityManager()Lc8/GYe;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    return-object v0
.end method

.method public startChildActivity(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 137
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 138
    const/high16 v1, 0x4000000

    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    invoke-virtual {v1, p2}, Lc8/GYe;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, "contentActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    invoke-virtual {v1, p2}, Lc8/GYe;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lc8/EYe;->mLocalActivityManager:Lc8/GYe;

    invoke-virtual {v1, p2, p3}, Lc8/GYe;->switchToChildActivity(Ljava/lang/String;Landroid/content/Intent;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc8/EYe;->execStartChildActivityInternal(Landroid/view/ViewGroup;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
