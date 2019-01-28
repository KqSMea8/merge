.class public Lc8/vhn;
.super Ljava/lang/Object;
.source "YoukuPayManager.java"

# interfaces
.implements Lc8/uhn;


# static fields
.field public static final sPayManager:Lc8/vhn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lc8/vhn;

    invoke-direct {v0}, Lc8/vhn;-><init>()V

    sput-object v0, Lc8/vhn;->sPayManager:Lc8/vhn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buyVip(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "order_type"    # Ljava/lang/String;
    .param p4, "app_productid"    # Ljava/lang/String;
    .param p5, "pay_channel"    # Ljava/lang/String;
    .param p6, "spm_id"    # Ljava/lang/String;
    .param p7, "url_spm_id"    # Ljava/lang/String;
    .param p8, "pre_r_object_id"    # Ljava/lang/String;

    .prologue
    .line 14
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v0

    invoke-virtual {v0}, Lc8/jKj;->clear()V

    .line 38
    return-void
.end method

.method public doRequestTrade(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "trade_id"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {}, Lc8/jKj;->getInstance()Lc8/jKj;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/jKj;->doRequestTradeMtop(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)V

    .line 33
    return-void
.end method
