.class public Lc8/Lgq;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lc8/Ohq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ogq;->defaultClient()Lc8/Ohq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ogq;

.field final synthetic val$client:Lc8/Phq;


# direct methods
.method constructor <init>(Lc8/Ogq;Lc8/Phq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ogq;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/Lgq;->this$0:Lc8/Ogq;

    iput-object p2, p0, Lc8/Lgq;->val$client:Lc8/Phq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lc8/Phq;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lc8/Lgq;->val$client:Lc8/Phq;

    return-object v0
.end method
