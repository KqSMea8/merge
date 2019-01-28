.class public final Lc8/LH;
.super Ljava/lang/Object;
.source "ConfigStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$configKey:Ljava/lang/String;

.field final synthetic val$configVal:J

.field final synthetic val$spName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 80
    iput-object p1, p0, Lc8/LH;->val$spName:Ljava/lang/String;

    iput-object p2, p0, Lc8/LH;->val$configKey:Ljava/lang/String;

    iput-wide p3, p0, Lc8/LH;->val$configVal:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 83
    iget-object v3, p0, Lc8/LH;->val$spName:Ljava/lang/String;

    iget-object v4, p0, Lc8/LH;->val$configKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/MH;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "nameTag":Ljava/lang/String;
    invoke-static {v1}, Lc8/MH;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "path":Ljava/lang/String;
    const/16 v3, 0x8

    :try_start_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-wide v4, p0, Lc8/LH;->val$configVal:J

    invoke-virtual {v0, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 88
    invoke-static {v2, v0}, Lc8/JD;->write(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v3

    invoke-static {}, Lc8/MH;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can not sava file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lc8/LH;->val$configVal:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
