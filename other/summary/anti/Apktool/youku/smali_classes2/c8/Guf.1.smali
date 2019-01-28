.class public Lc8/Guf;
.super Ljava/lang/Object;
.source "WebPDecoder.java"

# interfaces
.implements Lc8/Juf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Huf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Huf;


# direct methods
.method constructor <init>(Lc8/Huf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Huf;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Guf;->this$0:Lc8/Huf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destruct(J)V
    .locals 1
    .param p1, "nativeConfigOut"    # J

    .prologue
    .line 57
    invoke-static {p1, p2}, Lc8/Huf;->access$000(J)V

    .line 58
    return-void
.end method
