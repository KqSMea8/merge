.class public Lc8/DYe;
.super Ljava/lang/Object;
.source "ActivityGroupDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EYe;->asyncStartActivity(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EYe;

.field final synthetic val$failedTask:Lc8/Uy;

.field final synthetic val$successTask:Lc8/Uy;


# direct methods
.method constructor <init>(Lc8/EYe;Lc8/Uy;Lc8/Uy;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lc8/DYe;->this$0:Lc8/EYe;

    iput-object p2, p0, Lc8/DYe;->val$successTask:Lc8/Uy;

    iput-object p3, p0, Lc8/DYe;->val$failedTask:Lc8/Uy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 256
    iget-object v0, p0, Lc8/DYe;->val$successTask:Lc8/Uy;

    invoke-virtual {v0}, Lc8/Uy;->cancel()V

    .line 257
    iget-object v0, p0, Lc8/DYe;->val$failedTask:Lc8/Uy;

    invoke-virtual {v0}, Lc8/Uy;->cancel()V

    .line 258
    return-void
.end method
