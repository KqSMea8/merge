.class public abstract Lc8/Shn;
.super Landroid/content/BroadcastReceiver;
.source "BasePushReceiver.java"


# static fields
.field public static final ACTION_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final ACTION_IMG:Ljava/lang/String; = "IMG"

.field public static final ACTION_MC:Ljava/lang/String; = "MC"

.field public static final ACTION_PLAY:Ljava/lang/String; = "PLAY"

.field public static final ACTION_XIAOMI_SYS:Ljava/lang/String; = "XIAOMI_SYS"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_FORCE_MSG:Ljava/lang/String; = "force_msg"

.field public static final KEY_OWNER:Ljava/lang/String; = "owner"

.field public static final KEY_PUSH_MSG:Ljava/lang/String; = "PushMsg"

.field public static final KEY_SOURCE:Ljava/lang/String; = "from"

.field public static final KEY_SOURCE_TYPE:Ljava/lang/String; = "source_type"

.field public static final MIPUSH_SYS_MID:Ljava/lang/String; = "xmospush"

.field public static final OWNER_MI:Ljava/lang/String; = "xiaomi"

.field public static final SOURCE_PUSH:Ljava/lang/String; = "push"

.field private static final TAG:Ljava/lang/String; = "YKPush.PushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-static {p2}, Lc8/Thn;->dispatchPushMsg(Landroid/content/Intent;)V

    .line 84
    return-void
.end method
