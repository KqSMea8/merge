.class public Lc8/sWf;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lc8/nWf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xWf;->getItem(Ljava/lang/String;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/xWf;

.field final synthetic val$callback:Lc8/EWf;


# direct methods
.method constructor <init>(Lc8/xWf;Lc8/EWf;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lc8/sWf;->this$0:Lc8/xWf;

    iput-object p2, p0, Lc8/sWf;->val$callback:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceived(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/sWf;->val$callback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/sWf;->val$callback:Lc8/EWf;

    invoke-interface {v0, p1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method
