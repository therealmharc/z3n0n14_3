.class Lcom/feelingk/iap/IAPLib$1;
.super Landroid/os/Handler;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/feelingk/iap/IAPLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v11, 0x7d3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 249
    const-string v6, "IAPLib"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[NET-Handler] Network Message Receive Msg.what = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/feelingk/iap/util/CommonF$LOGGER;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 439
    :pswitch_0
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 441
    const/4 v4, 0x0

    .line 442
    .local v4, "msgUI":Landroid/os/Message;
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 443
    const-string v6, "\uc815\uc758\ub418\uc9c0 \uc54a\ub294  \uc5d0\ub7ec\uc785\ub2c8\ub2e4."

    iput-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    :cond_0
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v11, :cond_1

    iget v6, p1, Landroid/os/Message;->arg1:I

    const/16 v7, 0xf

    if-ne v6, v7, :cond_1

    .line 450
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->updateEncJuminNumber(Ljava/lang/String;)V

    .line 453
    :cond_1
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 454
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 455
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    :cond_2
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v6, :cond_3

    .line 458
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    iget v7, p1, Landroid/os/Message;->what:I

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v6, v7, v8}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onError(II)V

    .line 462
    .end local v4    # "msgUI":Landroid/os/Message;
    :cond_3
    :goto_0
    return-void

    .line 256
    :pswitch_1
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    .line 257
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v7, :cond_5

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Lcom/feelingk/iap/IAPLib;->mUseBPProtol:Ljava/lang/Boolean;

    .line 258
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemQuery()V

    goto :goto_0

    :cond_4
    move v6, v8

    .line 256
    goto :goto_1

    :cond_5
    move v7, v8

    .line 257
    goto :goto_2

    .line 265
    :pswitch_2
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->sendItemQuery()V

    goto :goto_0

    .line 270
    :pswitch_3
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v6, :cond_3

    .line 271
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v6}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemQueryComplete()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 272
    sget v6, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    if-ne v6, v7, :cond_6

    .line 273
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    invoke-static {v6}, Lcom/feelingk/iap/IAPLib;->sendItemPurchse(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 275
    :cond_6
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mMdn:Ljava/lang/String;

    sget v7, Lcom/feelingk/iap/IAPLib;->mKorTelecom:I

    sget-object v8, Lcom/feelingk/iap/IAPLib;->mUseTCash:Ljava/lang/Boolean;

    sget-object v9, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-static {v6, v7, v8, v9}, Lcom/feelingk/iap/IAPLib;->sendItemPurchseByDanal(Ljava/lang/String;ILjava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_7
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 279
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const-string v7, "\uacfc\uae08 \uc624\ub958"

    invoke-virtual {v6, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 280
    .local v3, "messageUI":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 289
    .end local v3    # "messageUI":Landroid/os/Message;
    :pswitch_4
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 296
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 297
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 298
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x452

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 299
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 311
    .end local v4    # "msgUI":Landroid/os/Message;
    :pswitch_5
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v6, :cond_3

    .line 312
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v6}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemPurchaseComplete()V

    goto/16 :goto_0

    .line 319
    :pswitch_6
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    .line 320
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    sget-object v7, Lcom/feelingk/iap/IAPLib;->mEncJuminNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/feelingk/iap/net/IAPBase;->setBaseEncodeJuminNumber(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :pswitch_7
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 327
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 328
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x450

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 329
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 335
    .end local v4    # "msgUI":Landroid/os/Message;
    :pswitch_8
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    goto/16 :goto_0

    .line 341
    :pswitch_9
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 343
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 344
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x45f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 345
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 351
    .end local v4    # "msgUI":Landroid/os/Message;
    :pswitch_a
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 353
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 354
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x45d

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 355
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 361
    .end local v4    # "msgUI":Landroid/os/Message;
    :pswitch_b
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 363
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 364
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x463

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 365
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 371
    .end local v4    # "msgUI":Landroid/os/Message;
    :pswitch_c
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 373
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 374
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x461

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 375
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 381
    .end local v4    # "msgUI":Landroid/os/Message;
    :pswitch_d
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 384
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/IAPBase;->getItemWholeAuthConfirmMessage()Lcom/feelingk/iap/net/ItemWholeAuthConfirm;

    move-result-object v5

    .line 386
    .local v5, "whole":Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v6, :cond_3

    .line 387
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-virtual {v5}, Lcom/feelingk/iap/net/ItemWholeAuthConfirm;->getItems()[Lcom/feelingk/iap/net/ItemAuth;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onWholeQuery([Lcom/feelingk/iap/net/ItemAuth;)V

    goto/16 :goto_0

    .line 393
    .end local v5    # "whole":Lcom/feelingk/iap/net/ItemWholeAuthConfirm;
    :pswitch_e
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 396
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/IAPBase;->getItemUseConfirmMessage()Lcom/feelingk/iap/net/ItemUseConfirm;

    move-result-object v2

    .line 397
    .local v2, "itemUse":Lcom/feelingk/iap/net/ItemUseConfirm;
    new-instance v1, Lcom/feelingk/iap/net/ItemUse;

    invoke-direct {v1}, Lcom/feelingk/iap/net/ItemUse;-><init>()V

    .line 399
    .local v1, "item":Lcom/feelingk/iap/net/ItemUse;
    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemUseConfirm;->getItemID()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/feelingk/iap/net/ItemUse;->pId:Ljava/lang/String;

    .line 400
    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemUseConfirm;->getItemName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/feelingk/iap/net/ItemUse;->pName:Ljava/lang/String;

    .line 401
    invoke-virtual {v2}, Lcom/feelingk/iap/net/ItemUseConfirm;->getCount()I

    move-result v6

    iput v6, v1, Lcom/feelingk/iap/net/ItemUse;->pCount:I

    .line 403
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v6, :cond_3

    .line 404
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v6, v1}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemUseQuery(Lcom/feelingk/iap/net/ItemUse;)V

    goto/16 :goto_0

    .line 410
    .end local v1    # "item":Lcom/feelingk/iap/net/ItemUse;
    .end local v2    # "itemUse":Lcom/feelingk/iap/net/ItemUseConfirm;
    :pswitch_f
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 413
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mBase:Lcom/feelingk/iap/net/IAPBase;

    invoke-virtual {v6}, Lcom/feelingk/iap/net/IAPBase;->getInitConfirmMessage()Lcom/feelingk/iap/net/InitConfirm;

    move-result-object v0

    .line 415
    .local v0, "init":Lcom/feelingk/iap/net/InitConfirm;
    new-instance v1, Lcom/feelingk/iap/net/ItemAuthInfo;

    invoke-direct {v1}, Lcom/feelingk/iap/net/ItemAuthInfo;-><init>()V

    .line 417
    .local v1, "item":Lcom/feelingk/iap/net/ItemAuthInfo;
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getCount()I

    move-result v6

    iput v6, v1, Lcom/feelingk/iap/net/ItemAuthInfo;->pCount:I

    .line 418
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getExpireDate()[B

    move-result-object v6

    iput-object v6, v1, Lcom/feelingk/iap/net/ItemAuthInfo;->pExpireDate:[B

    .line 419
    invoke-virtual {v0}, Lcom/feelingk/iap/net/InitConfirm;->getToken()[B

    move-result-object v6

    iput-object v6, v1, Lcom/feelingk/iap/net/ItemAuthInfo;->pToken:[B

    .line 421
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    if-eqz v6, :cond_3

    .line 422
    sget-object v6, Lcom/feelingk/iap/IAPLib;->mClientListener:Lcom/feelingk/iap/IAPLib$OnClientListener;

    invoke-interface {v6, v1}, Lcom/feelingk/iap/IAPLib$OnClientListener;->onItemAuthInfo(Lcom/feelingk/iap/net/ItemAuthInfo;)V

    goto/16 :goto_0

    .line 429
    .end local v0    # "init":Lcom/feelingk/iap/net/InitConfirm;
    .end local v1    # "item":Lcom/feelingk/iap/net/ItemAuthInfo;
    :pswitch_10
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->close()V

    .line 431
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 432
    invoke-static {}, Lcom/feelingk/iap/IAPLib;->access$0()Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x460

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 433
    .restart local v4    # "msgUI":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x44c
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_c
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
