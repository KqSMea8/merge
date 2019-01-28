.class public final Lc8/dcn;
.super Lc8/Bap;
.source "WidgetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ecn;->getTipsDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onCanceledListener:Lc8/Ybn;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;ILc8/Ybn;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p5, p0, Lc8/dcn;->val$activity:Landroid/app/Activity;

    iput p6, p0, Lc8/dcn;->val$requestCode:I

    iput-object p7, p0, Lc8/dcn;->val$onCanceledListener:Lc8/Ybn;

    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Bap;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onNegativeButtonClicked()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lc8/Bap;->onNegativeButtonClicked()V

    .line 82
    iget-object v0, p0, Lc8/dcn;->val$onCanceledListener:Lc8/Ybn;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lc8/dcn;->val$onCanceledListener:Lc8/Ybn;

    invoke-interface {v0}, Lc8/Ybn;->onCanceled()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onPositiveButtonClicked()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lc8/dcn;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lc8/dcn;->val$requestCode:I

    invoke-static {v0, v1}, Lc8/ecn;->access$000(Landroid/app/Activity;I)V

    .line 77
    return-void
.end method
