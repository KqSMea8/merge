.class public Lc8/Udg;
.super Ljava/lang/Object;
.source "WXModalUIModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vdg;->tracking(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Vdg;


# direct methods
.method constructor <init>(Lc8/Vdg;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lc8/Udg;->this$0:Lc8/Vdg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 259
    iget-object v0, p0, Lc8/Udg;->this$0:Lc8/Vdg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Vdg;->access$002(Lc8/Vdg;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 260
    return-void
.end method
