.class public Lc8/Zdo;
.super Ljava/lang/Object;
.source "ProgressBarManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/aeo;->createProgressBar(Landroid/content/Context;ILjava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/aeo;


# direct methods
.method constructor <init>(Lc8/aeo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/aeo;

    .prologue
    .line 203
    iput-object p1, p0, Lc8/Zdo;->this$0:Lc8/aeo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 207
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 208
    return-void
.end method
