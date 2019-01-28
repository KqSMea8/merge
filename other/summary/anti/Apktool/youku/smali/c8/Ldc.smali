.class public Lc8/Ldc;
.super Ljava/lang/Object;
.source "ZipExtractorTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ndc;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ndc;


# direct methods
.method constructor <init>(Lc8/Ndc;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lc8/Ldc;->this$0:Lc8/Ndc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    iget-object v0, p0, Lc8/Ldc;->this$0:Lc8/Ndc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Ndc;->cancel(Z)Z

    .line 84
    return-void
.end method
