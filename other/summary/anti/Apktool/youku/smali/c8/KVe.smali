.class public Lc8/KVe;
.super Landroid/content/BroadcastReceiver;
.source "UtdidBroadcastReceiver.java"


# static fields
.field public static final ACTION_UTDID:Ljava/lang/String; = "com.action.utdid"

.field public static final INTENT_DATA:Ljava/lang/String; = "data"

.field public static final INTENT_SIGN:Ljava/lang/String; = "sign"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-static {}, Lc8/yWe;->d()V

    .line 29
    const-string/jumbo v0, ""

    .line 31
    .local v0, "intentAction":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 35
    :goto_0
    const-string/jumbo v1, "com.action.utdid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-static {}, Lc8/vWe;->getInstance()Lc8/vWe;

    move-result-object v1

    new-instance v2, Lc8/JVe;

    invoke-direct {v2, p0, p2, p1}, Lc8/JVe;-><init>(Lc8/KVe;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lc8/vWe;->submit(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
