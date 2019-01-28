.class public Lc8/WUb;
.super Ljava/lang/Object;
.source "ThreadWatch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZUb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZUb;


# direct methods
.method constructor <init>(Lc8/ZUb;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lc8/WUb;->this$0:Lc8/ZUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lc8/WUb;->this$0:Lc8/ZUb;

    iget-object v1, p0, Lc8/WUb;->this$0:Lc8/ZUb;

    invoke-static {v1}, Lc8/ZUb;->access$000(Lc8/ZUb;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Lc8/ZUb;->access$002(Lc8/ZUb;I)I

    .line 51
    return-void
.end method
