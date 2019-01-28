.class public Lc8/MXo;
.super Ljava/lang/Object;
.source "YoukuSecurityModule.java"

# interfaces
.implements Lc8/NXo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OXo;->startSecurityVerifyUI(ILc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OXo;

.field final synthetic val$callback:Lc8/EWf;


# direct methods
.method constructor <init>(Lc8/OXo;Lc8/EWf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/OXo;

    .prologue
    .line 45
    iput-object p1, p0, Lc8/MXo;->this$0:Lc8/OXo;

    iput-object p2, p0, Lc8/MXo;->val$callback:Lc8/EWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/MXo;->val$callback:Lc8/EWf;

    invoke-interface {v0, p1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public onSucess(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/MXo;->val$callback:Lc8/EWf;

    invoke-interface {v0, p1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
