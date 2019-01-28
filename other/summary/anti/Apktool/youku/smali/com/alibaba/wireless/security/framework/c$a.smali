.class public Lcom/alibaba/wireless/security/framework/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wireless/security/framework/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/File;

.field b:Ljava/io/File;

.field c:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/wireless/security/framework/c$a;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/alibaba/wireless/security/framework/c$a;->b:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/wireless/security/framework/c$a;->c:Ljava/io/File;

    return-void
.end method
