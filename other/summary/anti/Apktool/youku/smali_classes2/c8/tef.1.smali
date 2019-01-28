.class public Lc8/tef;
.super Landroid/os/AsyncTask;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xef;->sendMultiTemplateRequests(Ljava/util/ArrayList;Z)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lc8/Aef;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xef;

.field final synthetic val$index:I

.field final synthetic val$requests:Ljava/util/ArrayList;

.field final synthetic val$toJSONObject:Z


# direct methods
.method constructor <init>(Lc8/xef;Ljava/util/ArrayList;IZ)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lc8/tef;->this$0:Lc8/xef;

    iput-object p2, p0, Lc8/tef;->val$requests:Ljava/util/ArrayList;

    iput p3, p0, Lc8/tef;->val$index:I

    iput-boolean p4, p0, Lc8/tef;->val$toJSONObject:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lc8/Aef;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 127
    iget-object v1, p0, Lc8/tef;->val$requests:Ljava/util/ArrayList;

    iget v2, p0, Lc8/tef;->val$index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zef;

    .line 128
    .local v0, "request":Lc8/zef;
    iget-object v1, p0, Lc8/tef;->this$0:Lc8/xef;

    iget-object v2, v0, Lc8/zef;->defaultTemplateAssetName:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/tef;->val$toJSONObject:Z

    invoke-static {v1, v2, v3}, Lc8/xef;->access$200(Lc8/xef;Ljava/lang/String;Z)Lc8/Aef;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/tef;->doInBackground([Ljava/lang/Void;)Lc8/Aef;

    move-result-object v0

    return-object v0
.end method
