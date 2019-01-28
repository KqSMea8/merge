.class public final Lc8/ccn;
.super Ljava/lang/Object;
.source "WidgetUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ecn;->getDialog(Landroid/app/Activity;Ljava/lang/String;ILc8/Ybn;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/ccn;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lc8/ccn;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog1"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lc8/ccn;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lc8/ccn;->val$requestCode:I

    invoke-static {v0, v1}, Lc8/ecn;->access$000(Landroid/app/Activity;I)V

    .line 52
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    return-void
.end method
