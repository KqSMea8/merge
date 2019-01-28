.class public Lc8/gcf;
.super Lc8/ecf;
.source "UiAsyncTaskDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DemoUiAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ecf",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/dcf;)V
    .locals 0
    .param p1, "source_activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lc8/dcf",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p2, "ui_post_executable":Lc8/dcf;, "Lcom/taobao/android/routine/UiAsyncTask$UiPostExecutable<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lc8/ecf;-><init>(Landroid/app/Activity;Lc8/dcf;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/gcf;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method
