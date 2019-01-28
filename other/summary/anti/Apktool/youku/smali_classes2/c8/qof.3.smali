.class public Lc8/qof;
.super Landroid/app/Instrumentation;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/pof;,
        Lc8/oof;
    }
.end annotation


# static fields
.field public static intentRedirectListener:Lc8/pof;


# instance fields
.field private context:Landroid/content/Context;

.field private mBase:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/content/Context;)V
    .locals 0
    .param p1, "mBase"    # Landroid/app/Instrumentation;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 25
    iput-object p2, p0, Lc8/qof;->context:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lc8/qof;->mBase:Landroid/app/Instrumentation;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lc8/qof;)Landroid/app/Instrumentation;
    .locals 1
    .param p0, "x0"    # Lc8/qof;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/qof;->mBase:Landroid/app/Instrumentation;

    return-object v0
.end method

.method private execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/oof;)Landroid/app/Instrumentation$ActivityResult;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "callback"    # Lc8/oof;

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 122
    .local v0, "componentName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 134
    const/4 v3, 0x0

    .line 136
    .local v3, "result":Landroid/app/Instrumentation$ActivityResult;
    :try_start_0
    invoke-interface {p4}, Lc8/oof;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 150
    .end local v3    # "result":Landroid/app/Instrumentation$ActivityResult;
    :goto_1
    return-object v3

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 127
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 128
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 129
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 142
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    sget-object v4, Lc8/qof;->intentRedirectListener:Lc8/pof;

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 144
    sget-object v4, Lc8/qof;->intentRedirectListener:Lc8/pof;

    invoke-interface {v4, p2, v1, v0, p1}, Lc8/pof;->onExternalRedirect(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    const/4 v3, 0x0

    goto :goto_1

    .line 150
    :cond_3
    invoke-interface {p4}, Lc8/oof;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;

    move-result-object v3

    goto :goto_1

    .restart local v3    # "result":Landroid/app/Instrumentation$ActivityResult;
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I

    .prologue
    .line 30
    new-instance v0, Lc8/jof;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lc8/jof;-><init>(Lc8/qof;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-direct {p0, p1, p5, p6, v0}, Lc8/qof;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/oof;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 66
    new-instance v0, Lc8/lof;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lc8/lof;-><init>(Lc8/qof;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1, p5, p6, v0}, Lc8/qof;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/oof;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 8
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I

    .prologue
    .line 48
    new-instance v0, Lc8/kof;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lc8/kof;-><init>(Lc8/qof;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)V

    invoke-direct {p0, p1, p5, p6, v0}, Lc8/qof;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/oof;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 84
    new-instance v0, Lc8/mof;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lc8/mof;-><init>(Lc8/qof;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1, p5, p6, v0}, Lc8/qof;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/oof;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;

    .prologue
    .line 102
    new-instance v0, Lc8/nof;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lc8/nof;-><init>(Lc8/qof;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-direct {p0, p1, p5, p6, v0}, Lc8/qof;->execStartActivityInternal(Landroid/content/Context;Landroid/content/Intent;ILc8/oof;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method
