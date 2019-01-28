.class public Lc8/Pgq;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lc8/Ohq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qgq;->defaultClient()Lc8/Ohq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qgq;

.field final synthetic val$client:Lc8/Jhq;


# direct methods
.method constructor <init>(Lc8/Qgq;Lc8/Jhq;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qgq;

    .prologue
    .line 161
    iput-object p1, p0, Lc8/Pgq;->this$0:Lc8/Qgq;

    iput-object p2, p0, Lc8/Pgq;->val$client:Lc8/Jhq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lc8/Phq;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lc8/Pgq;->val$client:Lc8/Jhq;

    return-object v0
.end method
