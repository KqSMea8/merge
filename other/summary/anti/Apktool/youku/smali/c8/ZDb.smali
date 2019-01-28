.class public Lc8/ZDb;
.super Ljava/lang/Object;
.source "EventRepo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/aEb;->uploadEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/aEb;

.field final synthetic val$eventMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/aEb;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lc8/ZDb;->this$0:Lc8/aEb;

    iput-object p2, p0, Lc8/ZDb;->val$eventMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lc8/ZDb;->val$eventMap:Ljava/util/Map;

    invoke-static {v0}, Lc8/HEb;->uploadEvent(Ljava/util/Map;)V

    .line 371
    return-void
.end method
