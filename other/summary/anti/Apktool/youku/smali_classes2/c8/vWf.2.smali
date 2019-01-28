.class public Lc8/vWf;
.super Ljava/lang/Object;
.source "WXStorageModule.java"

# interfaces
.implements Lc8/nWf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xWf;->getAllKeys(Lc8/EWf;)V
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
    .line 140
    iput-object p1, p0, Lc8/vWf;->this$0:Lc8/xWf;

    iput-object p2, p0, Lc8/vWf;->val$callback:Lc8/EWf;

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
    .line 143
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/vWf;->val$callback:Lc8/EWf;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lc8/vWf;->val$callback:Lc8/EWf;

    invoke-interface {v0, p1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 146
    :cond_0
    return-void
.end method
