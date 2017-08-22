struct listNode
{
	listNode *next;
	int value;
};
// 非递归实现链表翻转
listNode* reverse(listNode *head){
	// 
	listNode *p;
	listNode *q;
	listNode *r;
	p = head;
	q = head->next;
	head->next = NULL;

	while(q != NULL){
		r = q->next;
		q->next = p;
		p = q;
		q = r;
	}
	head = p;
	return head;
}

// 123456->132456->143256
listNode* reverse(listNode *head){
	listNode *p;
	listNode *q;
	p = head->next;
	while(p->next != NULL){
		q = p->next;
		p->next = q->next;
		q->next = head->next;
		head->next = q;
	}// 第2个在最后时跳出循环
	p->next = head;
	head = p->next->next;
	p->next = NULL;
	return head;
}

// 递归
listNode* reverse(listNode *head){
	if(head->next == NULL)
		return head;
	listNode *temp = reverse(head->next);
	listNode *temp2 = temp;
	while(temp->next != NULL)
		temp = temp->next;
	temp->next = head;
	head->next = NULL;
	head = temp2;
	return head;
}