.class public Lc8/YVf;
.super Ljava/lang/Object;
.source "WXPickersModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eWf;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eWf;

.field final synthetic val$callback:Lc8/EWf;


# direct methods
.method constructor <init>(Lc8/eWf;Lc8/EWf;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lc8/YVf;->this$0:Lc8/eWf;

    iput-object p2, p0, Lc8/YVf;->val$callback:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 223
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 224
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "cancel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string/jumbo v1, "data"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p0, Lc8/YVf;->val$callback:Lc8/EWf;

    invoke-interface {v1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 227
    return-void
.end method
