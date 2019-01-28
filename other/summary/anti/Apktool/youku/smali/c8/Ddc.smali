.class public Lc8/Ddc;
.super Ljava/lang/Object;
.source "DownLoaderTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Fdc;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Fdc;


# direct methods
.method constructor <init>(Lc8/Fdc;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lc8/Ddc;->this$0:Lc8/Fdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/Ddc;->this$0:Lc8/Fdc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Fdc;->cancel(Z)Z

    .line 66
    return-void
.end method
