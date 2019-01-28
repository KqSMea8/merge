.class public Lc8/HYe;
.super Ljava/lang/Object;
.source "AliDB.java"

# interfaces
.implements Lc8/jZe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/QYe;->initDBConnections(Lc8/wZe;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/QYe;

.field final synthetic val$callback:Lc8/wZe;


# direct methods
.method constructor <init>(Lc8/QYe;Lc8/wZe;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lc8/HYe;->this$0:Lc8/QYe;

    iput-object p2, p0, Lc8/HYe;->val$callback:Lc8/wZe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lc8/kZe;II)V
    .locals 2
    .param p1, "db"    # Lc8/kZe;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lc8/HYe;->val$callback:Lc8/wZe;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lc8/HYe;->val$callback:Lc8/wZe;

    iget-object v1, p0, Lc8/HYe;->this$0:Lc8/QYe;

    invoke-interface {v0, v1, p2, p3}, Lc8/wZe;->onUpgrade(Lc8/QYe;II)V

    .line 60
    :cond_0
    return-void
.end method
