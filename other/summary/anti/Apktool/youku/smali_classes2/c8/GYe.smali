.class public Lc8/GYe;
.super Ljava/lang/Object;
.source "LocalActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FYe;
    }
.end annotation


# static fields
.field static final CREATED:I = 0x2

.field static final DESTROYED:I = 0x5

.field static final INITIALIZING:I = 0x1

.field static final RESTORED:I = 0x0

.field static final RESUMED:I = 0x4

.field static final STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocalActivityManager"

.field private static final localLOGV:Z


# instance fields
.field private ActivityThread_performDestroyActivity:Lc8/Dy;

.field private ActivityThread_performPauseActivity:Lc8/Dy;

.field private ActivityThread_performRestartActivity:Lc8/Dy;

.field private ActivityThread_performResumeActivity:Lc8/Dy;

.field private ActivityThread_performStopActivity:Lc8/Dy;

.field private ActivityThread_startActivityNow:Lc8/Dy;

.field private Activity_onNewIntent:Lc8/Dy;

.field private Activity_onStart:Lc8/Dy;

.field private Activity_onStop:Lc8/Dy;

.field private Activity_performSaveInstanceState:Lc8/Dy;

.field private NonConfigurationInstances:Lc8/Ay;

.field private final mActivities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/FYe;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/FYe;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityThread:Ljava/lang/Object;

.field private mCurState:I

.field private mFinishing:Z

.field private final mParent:Landroid/app/Activity;

.field private mResumed:Lc8/FYe;

.field private mSingleMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "singleMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lc8/GYe;->mCurState:I

    .line 114
    invoke-direct {p0}, Lc8/GYe;->defineAndVerify()V

    .line 115
    invoke-static {}, Lc8/wy;->getActivityThread()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    .line 116
    iput-object p1, p0, Lc8/GYe;->mParent:Landroid/app/Activity;

    .line 117
    iput-boolean p2, p0, Lc8/GYe;->mSingleMode:Z

    .line 118
    return-void
.end method

.method private defineAndVerify()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/atlas/hack/Hack$HackDeclaration$HackAssertionException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    const-string/jumbo v0, "android.app.Activity$NonConfigurationInstances"

    invoke-static {v0}, Lc8/Ey;->into(Ljava/lang/String;)Lc8/Ay;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->NonConfigurationInstances:Lc8/Ay;

    .line 122
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "startActivityNow"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v7

    const-class v3, Landroid/content/pm/ActivityInfo;

    aput-object v3, v2, v8

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lc8/GYe;->NonConfigurationInstances:Lc8/Ay;

    invoke-virtual {v4}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_startActivityNow:Lc8/Dy;

    .line 124
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performRestartActivity"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performRestartActivity:Lc8/Dy;

    .line 125
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performDestroyActivity"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performDestroyActivity:Lc8/Dy;

    .line 126
    const-class v0, Landroid/app/Activity;

    invoke-static {v0}, Lc8/Ey;->into(Ljava/lang/Class;)Lc8/Ay;

    move-result-object v0

    const-string/jumbo v1, "performSaveInstanceState"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->Activity_performSaveInstanceState:Lc8/Dy;

    .line 127
    const-class v0, Landroid/app/Activity;

    invoke-static {v0}, Lc8/Ey;->into(Ljava/lang/Class;)Lc8/Ay;

    move-result-object v0

    const-string/jumbo v1, "onStart"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->Activity_onStart:Lc8/Dy;

    .line 128
    const-class v0, Landroid/app/Activity;

    invoke-static {v0}, Lc8/Ey;->into(Ljava/lang/Class;)Lc8/Ay;

    move-result-object v0

    const-string/jumbo v1, "onStop"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->Activity_onStop:Lc8/Dy;

    .line 129
    const-class v0, Landroid/app/Activity;

    invoke-static {v0}, Lc8/Ey;->into(Ljava/lang/Class;)Lc8/Ay;

    move-result-object v0

    const-string/jumbo v1, "onNewIntent"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Intent;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->Activity_onNewIntent:Lc8/Dy;

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 131
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performResumeActivity"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    .line 133
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performStopActivity"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    .line 135
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performPauseActivity"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performPauseActivity:Lc8/Dy;

    .line 145
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performResumeActivity"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    .line 140
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performStopActivity"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    .line 142
    sget-object v0, Lc8/xy;->ActivityThread:Lc8/Ay;

    const-string/jumbo v1, "performPauseActivity"

    new-array v2, v9, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lc8/Ay;->method(Ljava/lang/String;[Ljava/lang/Class;)Lc8/Dy;

    move-result-object v0

    iput-object v0, p0, Lc8/GYe;->ActivityThread_performPauseActivity:Lc8/Dy;

    goto :goto_0
.end method

.method private moveToState(Lc8/FYe;I)V
    .locals 9
    .param p1, "r"    # Lc8/FYe;
    .param p2, "desiredState"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 148
    iget v1, p1, Lc8/FYe;->curState:I

    if-eqz v1, :cond_0

    iget v1, p1, Lc8/FYe;->curState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget v1, p1, Lc8/FYe;->curState:I

    if-ne v1, v3, :cond_4

    .line 156
    iget-object v1, p1, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p1, Lc8/FYe;->intent:Landroid/content/Intent;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p1, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 161
    :cond_2
    :try_start_0
    iget-object v1, p0, Lc8/GYe;->ActivityThread_startActivityNow:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/GYe;->mParent:Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lc8/FYe;->id:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p1, Lc8/FYe;->intent:Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p1, v3, v4

    const/4 v4, 0x5

    iget-object v5, p1, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p1, Lc8/FYe;->activity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    iget-object v1, p1, Lc8/FYe;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p1, Lc8/FYe;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p1, Lc8/FYe;->window:Landroid/view/Window;

    .line 170
    const/4 v1, 0x0

    iput-object v1, p1, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    .line 171
    iput v7, p1, Lc8/FYe;->curState:I

    .line 173
    if-ne p2, v8, :cond_0

    .line 177
    :try_start_1
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    invoke-virtual {v1}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v6, :cond_3

    .line 178
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :goto_1
    iput v8, p1, Lc8/FYe;->curState:I

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 180
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "moveToState-INITIALIZING"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 182
    :catch_1
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_4
    iget v1, p1, Lc8/FYe;->curState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 199
    :pswitch_0
    if-ne p2, v7, :cond_5

    .line 202
    :try_start_3
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performRestartActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    .line 206
    iput v7, p1, Lc8/FYe;->curState:I

    .line 208
    :cond_5
    if-ne p2, v8, :cond_0

    .line 211
    :try_start_4
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performRestartActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    invoke-virtual {v1}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v6, :cond_6

    .line 213
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3

    .line 221
    :goto_2
    iput v8, p1, Lc8/FYe;->curState:I

    goto/16 :goto_0

    .line 203
    :catch_2
    move-exception v0

    .line 204
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 215
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_6
    :try_start_5
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "moveToState-CREATED"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 217
    :catch_3
    move-exception v0

    .line 218
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 226
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :pswitch_1
    if-ne p2, v8, :cond_7

    .line 231
    :try_start_6
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    invoke-virtual {v1}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v6, :cond_8

    .line 232
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4

    .line 239
    :goto_3
    const/4 v1, 0x0

    iput-object v1, p1, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    .line 240
    iput v8, p1, Lc8/FYe;->curState:I

    .line 242
    :cond_7
    if-ne p2, v6, :cond_0

    .line 246
    :try_start_7
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    invoke-virtual {v1}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v6, :cond_9

    .line 247
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_5

    .line 254
    :goto_4
    iput v6, p1, Lc8/FYe;->curState:I

    goto/16 :goto_0

    .line 234
    :cond_8
    :try_start_8
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performResumeActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "moveToState-STARTED"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    .line 236
    :catch_4
    move-exception v0

    .line 237
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 249
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_9
    :try_start_9
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "moveToState-STARTED"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_4

    .line 251
    :catch_5
    move-exception v0

    .line 252
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 259
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :pswitch_2
    if-ne p2, v7, :cond_a

    .line 261
    iget-boolean v1, p0, Lc8/GYe;->mFinishing:Z

    invoke-direct {p0, p1, v1}, Lc8/GYe;->performPause(Lc8/FYe;Z)V

    .line 262
    iput v7, p1, Lc8/FYe;->curState:I

    .line 264
    :cond_a
    if-ne p2, v6, :cond_0

    .line 266
    iget-boolean v1, p0, Lc8/GYe;->mFinishing:Z

    invoke-direct {p0, p1, v1}, Lc8/GYe;->performPause(Lc8/FYe;Z)V

    .line 270
    :try_start_a
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    invoke-virtual {v1}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v6, :cond_b

    .line 271
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_6

    .line 278
    :goto_5
    iput v6, p1, Lc8/FYe;->curState:I

    goto/16 :goto_0

    .line 273
    :cond_b
    :try_start_b
    iget-object v1, p0, Lc8/GYe;->ActivityThread_performStopActivity:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "moveToState-RESUMED"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_5

    .line 275
    :catch_6
    move-exception v0

    .line 276
    .restart local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 197
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performDestroy(Lc8/FYe;Z)Landroid/view/Window;
    .locals 8
    .param p1, "r"    # Lc8/FYe;
    .param p2, "finish"    # Z

    .prologue
    const/4 v7, 0x0

    .line 451
    iget-object v1, p1, Lc8/FYe;->window:Landroid/view/Window;

    .line 452
    .local v1, "win":Landroid/view/Window;
    iget v2, p1, Lc8/FYe;->curState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    if-nez p2, :cond_0

    .line 453
    invoke-direct {p0, p1, p2}, Lc8/GYe;->performPause(Lc8/FYe;Z)V

    .line 457
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/GYe;->ActivityThread_performDestroyActivity:Lc8/Dy;

    iget-object v3, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    iput-object v7, p1, Lc8/FYe;->activity:Landroid/app/Activity;

    .line 462
    iput-object v7, p1, Lc8/FYe;->window:Landroid/view/Window;

    .line 463
    if-eqz p2, :cond_1

    .line 464
    iput-object v7, p1, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    .line 466
    :cond_1
    const/4 v2, 0x5

    iput v2, p1, Lc8/FYe;->curState:I

    .line 467
    return-object v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private performPause(Lc8/FYe;Z)V
    .locals 8
    .param p1, "r"    # Lc8/FYe;
    .param p2, "finishing"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    iget-object v4, p1, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 290
    .local v2, "needState":Z
    :goto_0
    :try_start_0
    iget-object v3, p0, Lc8/GYe;->ActivityThread_performPauseActivity:Lc8/Dy;

    invoke-virtual {v3}, Lc8/Dy;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-ne v3, v5, :cond_2

    .line 291
    iget-object v3, p0, Lc8/GYe;->ActivityThread_performPauseActivity:Lc8/Dy;

    iget-object v4, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .local v1, "instanceState":Landroid/os/Bundle;
    :goto_1
    if-eqz v2, :cond_0

    .line 299
    iput-object v1, p1, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    .line 301
    :cond_0
    return-void

    .end local v1    # "instanceState":Landroid/os/Bundle;
    .end local v2    # "needState":Z
    :cond_1
    move v2, v3

    .line 285
    goto :goto_0

    .line 293
    .restart local v2    # "needState":Z
    :cond_2
    :try_start_1
    iget-object v3, p0, Lc8/GYe;->ActivityThread_performPauseActivity:Lc8/Dy;

    iget-object v4, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "moveToState-RESUMED"

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "instanceState":Landroid/os/Bundle;
    goto :goto_1

    .line 295
    .end local v1    # "instanceState":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "finish"    # Z

    .prologue
    .line 483
    iget-object v2, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FYe;

    .line 484
    .local v0, "r":Lc8/FYe;
    const/4 v1, 0x0

    .line 485
    .local v1, "win":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0, v0, p2}, Lc8/GYe;->performDestroy(Lc8/FYe;Z)Landroid/view/Window;

    move-result-object v1

    .line 487
    if-eqz p2, :cond_0

    .line 488
    iget-object v2, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v2, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    return-object v1
.end method

.method public dispatchCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 549
    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 552
    .local v3, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 553
    .local v0, "astate":Landroid/os/Bundle;
    iget-object v5, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/FYe;

    .line 554
    .local v4, "r":Lc8/FYe;
    if-eqz v4, :cond_0

    .line 555
    iput-object v0, v4, Lc8/FYe;->instanceState:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 562
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v4    # "r":Lc8/FYe;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "LocalActivityManager"

    const-string/jumbo v6, "Exception thrown when restoring LocalActivityManager state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 557
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "astate":Landroid/os/Bundle;
    .restart local v4    # "r":Lc8/FYe;
    :cond_0
    :try_start_1
    new-instance v4, Lc8/FYe;

    .end local v4    # "r":Lc8/FYe;
    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lc8/FYe;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 558
    .restart local v4    # "r":Lc8/FYe;
    iput-object v0, v4, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    .line 559
    iget-object v5, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v5, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 569
    .end local v0    # "astate":Landroid/os/Bundle;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "r":Lc8/FYe;
    :cond_1
    const/4 v5, 0x2

    iput v5, p0, Lc8/GYe;->mCurState:I

    .line 570
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 9
    .param p1, "finishing"    # Z

    .prologue
    .line 787
    iget-object v4, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 788
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 789
    iget-object v4, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/FYe;

    .line 793
    .local v3, "r":Lc8/FYe;
    :try_start_0
    iget-object v4, p0, Lc8/GYe;->ActivityThread_performDestroyActivity:Lc8/Dy;

    iget-object v5, p0, Lc8/GYe;->mActivityThread:Ljava/lang/Object;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 798
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "r":Lc8/FYe;
    :cond_0
    iget-object v4, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 799
    iget-object v4, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 800
    return-void
.end method

.method public dispatchOnNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 736
    iget-object v1, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    iget-object v1, v1, Lc8/FYe;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 738
    :try_start_0
    iget-object v1, p0, Lc8/GYe;->Activity_onNewIntent:Lc8/Dy;

    iget-object v2, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    iget-object v2, v2, Lc8/FYe;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public dispatchPause(Z)V
    .locals 6
    .param p1, "finishing"    # Z

    .prologue
    const/4 v5, 0x3

    .line 690
    if-eqz p1, :cond_0

    .line 691
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/GYe;->mFinishing:Z

    .line 693
    :cond_0
    iput v5, p0, Lc8/GYe;->mCurState:I

    .line 694
    iget-boolean v3, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v3, :cond_2

    .line 695
    iget-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v3, :cond_1

    .line 696
    iget-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    invoke-direct {p0, v3, v5}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 707
    :cond_1
    return-void

    .line 699
    :cond_2
    iget-object v3, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 700
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 701
    iget-object v3, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/FYe;

    .line 702
    .local v2, "r":Lc8/FYe;
    iget v3, v2, Lc8/FYe;->curState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 703
    invoke-direct {p0, v2, v5}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 700
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchResume()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 622
    iput v3, p0, Lc8/GYe;->mCurState:I

    .line 623
    iget-boolean v2, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    invoke-direct {p0, v2, v3}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 633
    :cond_0
    return-void

    .line 628
    :cond_1
    iget-object v2, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 629
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 630
    iget-object v2, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/FYe;

    invoke-direct {p0, v2, v3}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public dispatchRetainNonConfigurationInstance()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    const/4 v3, 0x0

    .line 755
    .local v3, "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 756
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 757
    iget-object v5, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/FYe;

    .line 758
    .local v4, "r":Lc8/FYe;
    if-eqz v4, :cond_1

    iget-object v5, v4, Lc8/FYe;->activity:Landroid/app/Activity;

    if-eqz v5, :cond_1

    .line 759
    iget-object v5, v4, Lc8/FYe;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 760
    .local v2, "instance":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 761
    if-nez v3, :cond_0

    .line 762
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 764
    .restart local v3    # "instanceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v5, v4, Lc8/FYe;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    .end local v2    # "instance":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v4    # "r":Lc8/FYe;
    :cond_2
    return-object v3
.end method

.method public dispatchStart()V
    .locals 6

    .prologue
    .line 636
    iget-boolean v3, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v3, :cond_1

    .line 637
    iget-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v3, :cond_0

    .line 639
    :try_start_0
    iget-object v3, p0, Lc8/GYe;->Activity_onStart:Lc8/Dy;

    iget-object v4, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    iget-object v4, v4, Lc8/FYe;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_0
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 645
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    iget-object v3, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 646
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 648
    :try_start_1
    iget-object v4, p0, Lc8/GYe;->Activity_onStart:Lc8/Dy;

    iget-object v3, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/FYe;

    iget-object v3, v3, Lc8/FYe;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 649
    :catch_1
    move-exception v1

    .line 650
    .restart local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public dispatchStop()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 717
    iput v6, p0, Lc8/GYe;->mCurState:I

    .line 718
    iget-object v5, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 719
    .local v0, "N":I
    iget-object v4, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    .line 720
    .local v4, "resumed":Lc8/FYe;
    const/4 v2, 0x0

    .line 721
    .local v2, "isNeedKeepOrder":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 722
    iget-object v5, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/FYe;

    .line 723
    .local v3, "r":Lc8/FYe;
    if-ne v4, v3, :cond_0

    .line 724
    const/4 v2, 0x1

    .line 721
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 727
    :cond_0
    invoke-direct {p0, v3, v6}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    goto :goto_1

    .line 730
    .end local v3    # "r":Lc8/FYe;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 731
    invoke-direct {p0, v4, v6}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 733
    :cond_2
    return-void
.end method

.method public fakeStop()V
    .locals 6

    .prologue
    .line 657
    iget-boolean v3, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v3, :cond_1

    .line 658
    iget-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v3, :cond_0

    .line 660
    :try_start_0
    iget-object v3, p0, Lc8/GYe;->Activity_onStop:Lc8/Dy;

    iget-object v4, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    iget-object v4, v4, Lc8/FYe;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 666
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    iget-object v3, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 667
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 669
    :try_start_1
    iget-object v4, p0, Lc8/GYe;->Activity_onStop:Lc8/Dy;

    iget-object v3, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/FYe;

    iget-object v3, v3, Lc8/FYe;->activity:Landroid/app/Activity;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 667
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 670
    :catch_1
    move-exception v1

    .line 671
    .restart local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public getActivity(Ljava/lang/String;)Landroid/app/Activity;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 530
    iget-object v1, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FYe;

    .line 531
    .local v0, "r":Lc8/FYe;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/FYe;->activity:Landroid/app/Activity;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    iget-object v0, v0, Lc8/FYe;->activity:Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    iget-object v0, v0, Lc8/FYe;->id:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllActivities()V
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/GYe;->dispatchDestroy(Z)V

    .line 777
    return-void
.end method

.method public saveInstanceState()Landroid/os/Bundle;
    .locals 10

    .prologue
    .line 583
    const/4 v5, 0x0

    .line 587
    .local v5, "state":Landroid/os/Bundle;
    iget-object v6, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 588
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 589
    iget-object v6, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/FYe;

    .line 590
    .local v4, "r":Lc8/FYe;
    if-nez v5, :cond_0

    .line 591
    new-instance v5, Landroid/os/Bundle;

    .end local v5    # "state":Landroid/os/Bundle;
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 593
    .restart local v5    # "state":Landroid/os/Bundle;
    :cond_0
    iget-object v6, v4, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    if-nez v6, :cond_1

    iget v6, v4, Lc8/FYe;->curState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    :cond_1
    iget-object v6, v4, Lc8/FYe;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 597
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 600
    .local v1, "childState":Landroid/os/Bundle;
    :try_start_0
    iget-object v6, p0, Lc8/GYe;->Activity_performSaveInstanceState:Lc8/Dy;

    iget-object v7, v4, Lc8/FYe;->activity:Landroid/app/Activity;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {v6, v7, v8}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    iput-object v1, v4, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    .line 606
    .end local v1    # "childState":Landroid/os/Bundle;
    :cond_2
    iget-object v6, v4, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 607
    iget-object v6, v4, Lc8/FYe;->id:Ljava/lang/String;

    iget-object v7, v4, Lc8/FYe;->instanceState:Landroid/os/Bundle;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 588
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    .restart local v1    # "childState":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 602
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 611
    .end local v1    # "childState":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "r":Lc8/FYe;
    :cond_4
    return-object v5
.end method

.method public startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 349
    iget v5, p0, Lc8/GYe;->mCurState:I

    if-ne v5, v8, :cond_0

    .line 350
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Activities can\'t be added until the containing group has been created."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 354
    :cond_0
    const/4 v1, 0x0

    .line 355
    .local v1, "adding":Z
    const/4 v4, 0x0

    .line 357
    .local v4, "sameIntent":Z
    const/4 v0, 0x0

    .line 360
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/FYe;

    .line 361
    .local v3, "r":Lc8/FYe;
    if-nez v3, :cond_2

    .line 363
    new-instance v3, Lc8/FYe;

    .end local v3    # "r":Lc8/FYe;
    invoke-direct {v3, p1, p2}, Lc8/FYe;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 364
    .restart local v3    # "r":Lc8/FYe;
    const/4 v1, 0x1

    .line 372
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 373
    iget-object v5, v3, Lc8/FYe;->intent:Landroid/content/Intent;

    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 375
    if-nez v0, :cond_3

    .line 377
    new-instance v5, Landroid/content/ActivityNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No Activity found to handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 365
    :cond_2
    iget-object v5, v3, Lc8/FYe;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    .line 366
    iget-object v5, v3, Lc8/FYe;->intent:Landroid/content/Intent;

    invoke-virtual {v5, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    .line 367
    if-eqz v4, :cond_1

    .line 369
    iget-object v0, v3, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 384
    :cond_3
    iget-boolean v5, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v5, :cond_4

    .line 385
    iget-object v2, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    .line 389
    .local v2, "old":Lc8/FYe;
    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_4

    iget v5, p0, Lc8/GYe;->mCurState:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 390
    const/4 v5, 0x3

    invoke-direct {p0, v2, v5}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 394
    .end local v2    # "old":Lc8/FYe;
    :cond_4
    if-eqz v1, :cond_7

    .line 396
    iget-object v5, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v5, p0, Lc8/GYe;->mActivityArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_5
    :goto_1
    iput-object p2, v3, Lc8/FYe;->intent:Landroid/content/Intent;

    .line 437
    iput v8, v3, Lc8/FYe;->curState:I

    .line 438
    iput-object v0, v3, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 440
    iget v5, p0, Lc8/GYe;->mCurState:I

    invoke-direct {p0, v3, v5}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 443
    iget-boolean v5, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v5, :cond_6

    .line 444
    iput-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    .line 446
    :cond_6
    iget-object v5, v3, Lc8/FYe;->window:Landroid/view/Window;

    :goto_2
    return-object v5

    .line 398
    :cond_7
    iget-object v5, v3, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_5

    .line 401
    iget-object v5, v3, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v0, v5, :cond_8

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Lc8/FYe;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 404
    :cond_8
    iget v5, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v5, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x20000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    .line 407
    :cond_9
    iget-object v5, v3, Lc8/FYe;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 410
    iput-object p2, v3, Lc8/FYe;->intent:Landroid/content/Intent;

    .line 411
    iget v5, p0, Lc8/GYe;->mCurState:I

    invoke-direct {p0, v3, v5}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 412
    iget-boolean v5, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v5, :cond_a

    .line 413
    iput-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    .line 415
    :cond_a
    iget-object v5, v3, Lc8/FYe;->window:Landroid/view/Window;

    goto :goto_2

    .line 417
    :cond_b
    if-eqz v4, :cond_d

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x4000000

    and-int/2addr v5, v6

    if-nez v5, :cond_d

    .line 421
    iput-object p2, v3, Lc8/FYe;->intent:Landroid/content/Intent;

    .line 422
    iget v5, p0, Lc8/GYe;->mCurState:I

    invoke-direct {p0, v3, v5}, Lc8/GYe;->moveToState(Lc8/FYe;I)V

    .line 423
    iget-boolean v5, p0, Lc8/GYe;->mSingleMode:Z

    if-eqz v5, :cond_c

    .line 424
    iput-object v3, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    .line 426
    :cond_c
    iget-object v5, v3, Lc8/FYe;->window:Landroid/view/Window;

    goto :goto_2

    .line 433
    :cond_d
    invoke-direct {p0, v3, v8}, Lc8/GYe;->performDestroy(Lc8/FYe;Z)Landroid/view/Window;

    goto :goto_1
.end method

.method public switchToChildActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 803
    iget-object v1, p0, Lc8/GYe;->mActivities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/FYe;

    .line 804
    .local v0, "r":Lc8/FYe;
    if-eqz v0, :cond_0

    .line 805
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/GYe;->dispatchPause(Z)V

    .line 806
    invoke-virtual {p0}, Lc8/GYe;->fakeStop()V

    .line 807
    iput-object v0, p0, Lc8/GYe;->mResumed:Lc8/FYe;

    .line 808
    invoke-virtual {p0, p2}, Lc8/GYe;->dispatchOnNewIntent(Landroid/content/Intent;)V

    .line 809
    invoke-virtual {p0}, Lc8/GYe;->dispatchStart()V

    .line 810
    invoke-virtual {p0}, Lc8/GYe;->dispatchResume()V

    .line 812
    :cond_0
    return-void
.end method
