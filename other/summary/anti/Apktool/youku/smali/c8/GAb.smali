.class public Lc8/GAb;
.super Ljava/lang/Object;
.source "SelfChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/HAb;->onChange(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/HAb;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/HAb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/GAb;->this$0:Lc8/HAb;

    iput-object p2, p0, Lc8/GAb;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lc8/GAb;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lc8/GAb;->this$0:Lc8/HAb;

    iget-object v1, p0, Lc8/GAb;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lc8/GAb;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lc8/HAb;->check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method
