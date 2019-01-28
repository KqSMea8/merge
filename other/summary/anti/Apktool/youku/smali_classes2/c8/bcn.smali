.class public final Lc8/bcn;
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
.field final synthetic val$onCanceledListener:Lc8/Ybn;


# direct methods
.method constructor <init>(Lc8/Ybn;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/bcn;->val$onCanceledListener:Lc8/Ybn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog1"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lc8/bcn;->val$onCanceledListener:Lc8/Ybn;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/bcn;->val$onCanceledListener:Lc8/Ybn;

    invoke-interface {v0}, Lc8/Ybn;->onCanceled()V

    .line 61
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    return-void
.end method
