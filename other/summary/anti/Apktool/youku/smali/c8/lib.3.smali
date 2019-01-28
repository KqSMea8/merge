.class public Lc8/lib;
.super Landroid/os/AsyncTask;
.source "LoginServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/mib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lc8/ugb;

.field final synthetic this$0:Lc8/mib;


# direct methods
.method constructor <init>(Lc8/mib;Lc8/ugb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mib;
    .param p2, "c"    # Lc8/ugb;

    .prologue
    .line 185
    iput-object p1, p0, Lc8/lib;->this$0:Lc8/mib;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 186
    iput-object p2, p0, Lc8/lib;->callback:Lc8/ugb;

    .line 187
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lc8/lib;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 191
    sget-object v0, Lc8/Dgb;->INSTANCE:Lc8/Dgb;

    invoke-virtual {v0}, Lc8/Dgb;->refreshCookie()V

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/lib;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 197
    iget-object v0, p0, Lc8/lib;->callback:Lc8/ugb;

    invoke-interface {v0}, Lc8/ugb;->onSuccess()V

    .line 198
    return-void
.end method
