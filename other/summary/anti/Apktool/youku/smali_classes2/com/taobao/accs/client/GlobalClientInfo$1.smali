.class public Lcom/taobao/accs/client/GlobalClientInfo$1;
.super Ljava/lang/Object;
.source "GlobalClientInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/client/GlobalClientInfo;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/client/GlobalClientInfo;


# direct methods
.method constructor <init>(Lcom/taobao/accs/client/GlobalClientInfo;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/accs/client/GlobalClientInfo$1;->this$0:Lcom/taobao/accs/client/GlobalClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/antibrush/CookieMgr;->setup(Landroid/content/Context;)V

    .line 85
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->restoreCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->mCookieSec:Ljava/lang/String;

    .line 89
    return-void
.end method
