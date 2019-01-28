.class public Lc8/fcf;
.super Landroid/app/Activity;
.source "UiAsyncTaskDemo.java"

# interfaces
.implements Lc8/dcf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemoActivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lc8/dcf",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onResume()V
    .locals 4

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 18
    new-instance v0, Lc8/gcf;

    invoke-direct {v0, p0, p0}, Lc8/gcf;-><init>(Landroid/app/Activity;Lc8/dcf;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "http://..."

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lc8/gcf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 19
    return-void
.end method

.method public onUiPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 24
    return-void
.end method
