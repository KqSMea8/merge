.class public Lc8/mhq;
.super Ljava/lang/Object;
.source "RestAdapter.java"

# interfaces
.implements Lc8/Ohq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nhq;->setClient(Lc8/Phq;)Lc8/nhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nhq;

.field final synthetic val$client:Lc8/Phq;


# direct methods
.method constructor <init>(Lc8/nhq;Lc8/Phq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nhq;

    .prologue
    .line 583
    iput-object p1, p0, Lc8/mhq;->this$0:Lc8/nhq;

    iput-object p2, p0, Lc8/mhq;->val$client:Lc8/Phq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lc8/Phq;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lc8/mhq;->val$client:Lc8/Phq;

    return-object v0
.end method
